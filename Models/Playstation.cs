using System;
using System.ComponentModel.DataAnnotations;

namespace products.Models
{
  public class Playstation
  {
    public int Id { get; set;}
    [Required]
    public string Series {get; set;}
    public DateTime CreatedAt {get; set;}
    public DateTime UpdatedAt {get; set;}
    public string CreatorId { get;set;}
  }
}