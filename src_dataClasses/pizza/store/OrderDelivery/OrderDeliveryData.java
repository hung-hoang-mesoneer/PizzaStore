package pizza.store.OrderDelivery;

/**
 */
@SuppressWarnings("all")
@javax.annotation.Generated(comments="This is the java file of the ivy data class OrderDeliveryData", value={"ch.ivyteam.ivy.scripting.streamInOut.IvyScriptJavaClassBuilder"})
public class OrderDeliveryData extends ch.ivyteam.ivy.scripting.objects.CompositeObject
{
  /** SerialVersionUID */
  private static final long serialVersionUID = 2700097837244583267L;

  private java.util.List<pizza.store.dto.OrderDTO> dataOrdered;

  /**
   * Gets the field dataOrdered.
   * @return the value of the field dataOrdered; may be null.
   */
  public java.util.List<pizza.store.dto.OrderDTO> getDataOrdered()
  {
    return dataOrdered;
  }

  /**
   * Sets the field dataOrdered.
   * @param _dataOrdered the new value of the field dataOrdered.
   */
  public void setDataOrdered(java.util.List<pizza.store.dto.OrderDTO> _dataOrdered)
  {
    dataOrdered = _dataOrdered;
  }

}
