﻿using System.ComponentModel.DataAnnotations.Schema;

namespace SIRCADE.ApiCore.Models.SchedulesProgramming.Entities;

[Table("TiposProgramacion")]
public class ProgrammingType
{
    public ProgrammingType()
    {

    }

    public ProgrammingType(string name)
    {
        Name = name;
    }

    public int Id { get; set; }

    [Column("Nombre")]
    public string Name { get; set; } = default!;

    public ICollection<ScheduleProgramming> SchedulesProgramming { get; set; } = [];
}