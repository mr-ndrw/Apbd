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
    
    public partial class Cinema
    {
        public Cinema()
        {
            this.ProjectionRoom = new HashSet<ProjectionRoom>();
            this.Work = new HashSet<Work>();
        }
    
        public int Id { get; set; }
        public string Address { get; set; }
        public string TelephoneNo { get; set; }
        public int IdRegion { get; set; }
        public int IdManager { get; set; }
        public string Name { get; set; }
    
        public virtual Employee Employee { get; set; }
        public virtual Region Region { get; set; }
        public virtual ICollection<ProjectionRoom> ProjectionRoom { get; set; }
        public virtual ICollection<Work> Work { get; set; }
    }
}
