//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace CineOSForms
{
    using System;
    using System.Collections.Generic;
    
    public partial class Employee
    {
        public Employee()
        {
            this.Cinema = new HashSet<Cinema>();
            this.Service = new HashSet<Service>();
            this.Work = new HashSet<Work>();
        }
    
        public int Id { get; set; }
        public string Name { get; set; }
        public string Surname { get; set; }
        public string TelephoneNo { get; set; }
        public string Email { get; set; }
    
        public virtual ICollection<Cinema> Cinema { get; set; }
        public virtual ICollection<Service> Service { get; set; }
        public virtual ICollection<Work> Work { get; set; }
    }
}
