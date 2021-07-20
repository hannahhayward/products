using System;

namespace products.Models
{
  public class PlaystationGame
  {
    public int Id {get; set;}
    public string Name {get; set;}
    public string ConsoleType {get; set;}
    public string CreatorId {get;set;}
    public DateTime CreatedAt {get;set;}
    public DateTime UpdatedAt {get;set;}
    public int ConsoleId {get; set;}
  }
}