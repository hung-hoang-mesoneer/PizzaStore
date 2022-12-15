package pizza.store.entity;

/**
 */
@SuppressWarnings("all")
@javax.annotation.Generated(comments="This is the java file of the ivy data class Product", value={"ch.ivyteam.ivy.scripting.streamInOut.IvyScriptJavaClassBuilder"})
@javax.persistence.Entity
public class Product extends ch.ivyteam.ivy.scripting.objects.CompositeObject
{
  /** SerialVersionUID */
  private static final long serialVersionUID = 4943773924717407002L;

  /**
   * Identifier
   */
  @javax.persistence.Id
  @javax.persistence.GeneratedValue
  @javax.persistence.Column(name="id")
  private java.lang.Integer id;

  /**
   * Gets the field id.
   * @return the value of the field id; may be null.
   */
  public java.lang.Integer getId()
  {
    return id;
  }

  /**
   * Sets the field id.
   * @param _id the new value of the field id.
   */
  public void setId(java.lang.Integer _id)
  {
    id = _id;
  }

  @javax.persistence.Column(name="name")
  private java.lang.String name;

  /**
   * Gets the field name.
   * @return the value of the field name; may be null.
   */
  public java.lang.String getName()
  {
    return name;
  }

  /**
   * Sets the field name.
   * @param _name the new value of the field name.
   */
  public void setName(java.lang.String _name)
  {
    name = _name;
  }

  @javax.persistence.Column(name="price")
  private java.lang.Integer price;

  /**
   * Gets the field price.
   * @return the value of the field price; may be null.
   */
  public java.lang.Integer getPrice()
  {
    return price;
  }

  /**
   * Sets the field price.
   * @param _price the new value of the field price.
   */
  public void setPrice(java.lang.Integer _price)
  {
    price = _price;
  }

  @javax.persistence.Column(name="quantity")
  private java.lang.Integer quantity;

  /**
   * Gets the field quantity.
   * @return the value of the field quantity; may be null.
   */
  public java.lang.Integer getQuantity()
  {
    return quantity;
  }

  /**
   * Sets the field quantity.
   * @param _quantity the new value of the field quantity.
   */
  public void setQuantity(java.lang.Integer _quantity)
  {
    quantity = _quantity;
  }

}
