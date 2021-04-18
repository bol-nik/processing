class Car {
  private String model;
  private String company;
  private int year;
  private int HP;

  Car(String company, String model, int year, int HP) {
    this.company = company;
    this.model = model;
    this.year = year;
    this.HP = HP;
  }

  String getModel() {
    return this.model;
  }
  
  void setModel(String model) {
    this.model=model;
  }

  void printInfo() {
    println("Information about car");
    println("Company: ", company);
    println("Model: "+ model);
    println("Power: ", HP, "h.f.");
    println("Year: ", + year);
  }
}
