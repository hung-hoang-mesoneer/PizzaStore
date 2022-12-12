package pizza.store;

/**
 */
@SuppressWarnings("all")
@javax.annotation.Generated(comments="This is the java file of the ivy data class Order", value={"ch.ivyteam.ivy.scripting.streamInOut.IvyScriptJavaClassBuilder"})
public class Order extends ch.ivyteam.ivy.scripting.objects.CompositeObject
{
  /** SerialVersionUID */
  private static final long serialVersionUID = 4537694303048625984L;

  private pizza.store.InfoOrder infoOrder;

  /**
   * Gets the field infoOrder.
   * @return the value of the field infoOrder; may be null.
   */
  public pizza.store.InfoOrder getInfoOrder()
  {
    return infoOrder;
  }

  /**
   * Sets the field infoOrder.
   * @param _infoOrder the new value of the field infoOrder.
   */
  public void setInfoOrder(pizza.store.InfoOrder _infoOrder)
  {
    infoOrder = _infoOrder;
  }

}
