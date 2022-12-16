package pizza.store.entity;

/**
 */
@SuppressWarnings("all")
@javax.annotation.Generated(comments="This is the java file of the ivy data class Order", value={"ch.ivyteam.ivy.scripting.streamInOut.IvyScriptJavaClassBuilder"})
@javax.persistence.Entity
@javax.persistence.Table(name="order")
public class Order extends ch.ivyteam.ivy.scripting.objects.CompositeObject
{
  /** SerialVersionUID */
  private static final long serialVersionUID = -2044978418374447682L;

  /**
   * Identifier
   */
  @javax.persistence.Id
  @javax.persistence.GeneratedValue
  @javax.persistence.Column(name="id")
  private java.lang.Integer orderId;

  /**
   * Gets the field orderId.
   * @return the value of the field orderId; may be null.
   */
  public java.lang.Integer getOrderId()
  {
    return orderId;
  }

  /**
   * Sets the field orderId.
   * @param _orderId the new value of the field orderId.
   */
  public void setOrderId(java.lang.Integer _orderId)
  {
    orderId = _orderId;
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

  @javax.persistence.Column(name="phone")
  private java.lang.String phone;

  /**
   * Gets the field phone.
   * @return the value of the field phone; may be null.
   */
  public java.lang.String getPhone()
  {
    return phone;
  }

  /**
   * Sets the field phone.
   * @param _phone the new value of the field phone.
   */
  public void setPhone(java.lang.String _phone)
  {
    phone = _phone;
  }

  @javax.persistence.Column(name="delivery_to")
  private java.lang.String deliveryTo;

  /**
   * Gets the field deliveryTo.
   * @return the value of the field deliveryTo; may be null.
   */
  public java.lang.String getDeliveryTo()
  {
    return deliveryTo;
  }

  /**
   * Sets the field deliveryTo.
   * @param _deliveryTo the new value of the field deliveryTo.
   */
  public void setDeliveryTo(java.lang.String _deliveryTo)
  {
    deliveryTo = _deliveryTo;
  }

  @javax.persistence.Column(name="status")
  private java.lang.String status;

  /**
   * Gets the field status.
   * @return the value of the field status; may be null.
   */
  public java.lang.String getStatus()
  {
    return status;
  }

  /**
   * Sets the field status.
   * @param _status the new value of the field status.
   */
  public void setStatus(java.lang.String _status)
  {
    status = _status;
  }

  @javax.persistence.Column(name="created_date")
  private java.lang.String date;

  /**
   * Gets the field date.
   * @return the value of the field date; may be null.
   */
  public java.lang.String getDate()
  {
    return date;
  }

  /**
   * Sets the field date.
   * @param _date the new value of the field date.
   */
  public void setDate(java.lang.String _date)
  {
    date = _date;
  }

  @javax.persistence.Column(name="totalPrice")
  private java.lang.Integer totalPrice;

  /**
   * Gets the field totalPrice.
   * @return the value of the field totalPrice; may be null.
   */
  public java.lang.Integer getTotalPrice()
  {
    return totalPrice;
  }

  /**
   * Sets the field totalPrice.
   * @param _totalPrice the new value of the field totalPrice.
   */
  public void setTotalPrice(java.lang.Integer _totalPrice)
  {
    totalPrice = _totalPrice;
  }

}
