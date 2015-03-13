using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.Linq;
using System.Windows.Forms;

namespace CineOSForms
{
	public partial class Form1 : Form
	{
		private Cinema _currentlyDisplayedCinema;
		private ApbdEntities apbdContext;
		private DateTime selectedDateTime;

		#region Forms Methods

		public Form1()
		{
			InitializeComponent();
		}

		private void Form1_Load(object sender, EventArgs e)
		{
			apbdContext = new ApbdEntities();

			var allCinemas = apbdContext.Cinema.ToList();

			//	Set currently displayed cinema item to the first default.
			_currentlyDisplayedCinema = apbdContext.Cinema.FirstOrDefault();

			//	Initialize Combobox with all the names of cinemas
			CinemasComboBox.DataSource = allCinemas;
			CinemasComboBox.DisplayMember = "Name";
			CinemasComboBox.ValueMember = "Id";
			
			//	Call update cinematab so that everything renders.
			UpdateCinemaTab();
		}

		private void CinemaTab_Click(object sender, EventArgs e)
		{
		}

		private void UpdateCinemaTab()
		{
			//	Update the Cinema Contact Info region
			CinemaAddressLabel.Text = _currentlyDisplayedCinema.Address;
			CinemaTelephoneNumberLabel.Text = _currentlyDisplayedCinema.TelephoneNo;

			//	Update Manager info
			var manager = GetManagerFor(_currentlyDisplayedCinema);
			var managersName = string.Format("{0} {1}", manager.Name, manager.Surname);
			ManagerLinkLabel.Text = managersName;
			
			//	Populate the GridView with Employed workes in the current cinema
			EmployeesInCinemaDataGridView.DataSource = ConstructEmployeeTable(_currentlyDisplayedCinema);

			//	Bolden the dates in the MonthCalendar control
			UpcomingProjectionsCalendar.BoldedDates = GetProjectionDates(_currentlyDisplayedCinema);

			// populate the projections dgv	
			selectedDateTime = UpcomingProjectionsCalendar.SelectionStart;
			SelectedDayProjectionDataGridView.DataSource = ConstructProjectionDataTable(selectedDateTime);

			SelectedDayLabel.Text = string.Format("{0}/{1}/{2}", selectedDateTime.Day, selectedDateTime.Month, selectedDateTime.Year);
		}

		#endregion

		#region Cinema Helper Methods

		private List<Projection> GetAllProjectionsFor(Cinema cinema)
		{
			var projections =
				apbdContext.Projection.Where(projection => projection.ProjectionRoom.IdCinema == cinema.Id).Include("ProjectionRoom")
					.ToList();
			return projections;
		}

		private List<Employee> GetAllEmployeesFor(Cinema cinema)
		{
			var employees =
				apbdContext.Employee.Where(employee => employee.Work.Any(work => work.IdCinema == cinema.Id))
					.ToList();

			return employees;
		}

		private Employee GetManagerFor(Cinema cinema)
		{
			return apbdContext.Employee.FirstOrDefault(employee => employee.Cinema.Any(empsManagedCinemas => empsManagedCinemas.Id == cinema.Id));
		}

		private DataTable ConstructEmployeeTable(Cinema cinema)
		{
			var dataTable = new DataTable();

			dataTable.Clear();

			dataTable.Columns.Add("Id");
			dataTable.Columns.Add("Name");
			dataTable.Columns.Add("Surname");
			dataTable.Columns.Add("Telephone");

			var employees = GetAllEmployeesFor(cinema);

			foreach (var employee in employees)
			{
				dataTable.Rows.Add(new object[]{employee.Id, employee.Name, employee.Surname, employee.TelephoneNo});
			}

			return dataTable;
		}

		private DateTime[] GetProjectionDates(Cinema cinema)
		{
			var projectionDates = GetAllProjectionsFor(cinema);

			var dates = projectionDates.Select(projection => projection.DateTime)
				.ToArray();

			return dates;
		}

		private List<Projection> GetAllProjectionsForGivenDay(DateTime datetime)
		{
			return GetAllProjectionsFor(_currentlyDisplayedCinema)
				.Where(projectionInCinema => IsYearMonthDayTheSame(projectionInCinema.DateTime, datetime)).ToList();
		}

		private DataTable ConstructProjectionDataTable(DateTime datetime)
		{
			var projectionsOnGivenDay = GetAllProjectionsForGivenDay(datetime);

			var dataTable = new DataTable();

			dataTable.Columns.Add("Id");
			dataTable.Columns.Add("Date Time");
			dataTable.Columns.Add("Length");
			dataTable.Columns.Add("Projection Room");

			foreach (var projection in projectionsOnGivenDay)
			{
				dataTable.Rows.Add(new object[]{projection.Id, projection.DateTime, projection.Length, projection.ProjectionRoom.RoomNumber});
			}

			return dataTable;
		}

		#endregion


		#region Events

		private void CinemasComboBox_SelectedIndexChanged(object sender, EventArgs e)
		{
			var comboBox = (ComboBox)sender;

			var selectedId = ((Cinema)(comboBox.SelectedItem)).Id;

			_currentlyDisplayedCinema = apbdContext.Cinema.Find(selectedId);

			UpdateCinemaTab();
		}

		private void UpcomingProjectionsCalendar_DateSelected(object sender, DateRangeEventArgs e)
		{
			UpdateCinemaTab();
		}

		#endregion


		#region Helpers

		private static bool IsYearMonthDayTheSame(DateTime firstDateimeDateTime, DateTime secondDateTime)
		{
			return firstDateimeDateTime.Year == secondDateTime.Year && firstDateimeDateTime.Month == secondDateTime.Month && firstDateimeDateTime.Day == secondDateTime.Day;
		}
		#endregion

		private void splitContainer1_Panel1_Paint(object sender, PaintEventArgs e)
		{

		}

		private void label1_Click(object sender, EventArgs e)
		{

		}
	}
}