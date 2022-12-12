package pizza.store.HomeProduct;

/**
 */
@SuppressWarnings("all")
@javax.annotation.Generated(comments="This is the java file of the ivy data class HomeProductData", value={"ch.ivyteam.ivy.scripting.streamInOut.IvyScriptJavaClassBuilder"})
public class HomeProductData extends ch.ivyteam.ivy.scripting.objects.CompositeObject
{
  /** SerialVersionUID */
  private static final long serialVersionUID = -3184837996687542224L;

  /**
   * init data
   */
  private java.util.List<pizza.store.model.Product> dataPizzas;

  /**
   * Gets the field dataPizzas.
   * @return the value of the field dataPizzas; may be null.
   */
  public java.util.List<pizza.store.model.Product> getDataPizzas()
  {
    return dataPizzas;
  }

  /**
   * Sets the field dataPizzas.
   * @param _dataPizzas the new value of the field dataPizzas.
   */
  public void setDataPizzas(java.util.List<pizza.store.model.Product> _dataPizzas)
  {
    dataPizzas = _dataPizzas;
  }

  /**
   * init data
   */
  private java.util.List<pizza.store.model.Product> dataDrinks;

  /**
   * Gets the field dataDrinks.
   * @return the value of the field dataDrinks; may be null.
   */
  public java.util.List<pizza.store.model.Product> getDataDrinks()
  {
    return dataDrinks;
  }

  /**
   * Sets the field dataDrinks.
   * @param _dataDrinks the new value of the field dataDrinks.
   */
  public void setDataDrinks(java.util.List<pizza.store.model.Product> _dataDrinks)
  {
    dataDrinks = _dataDrinks;
  }

  private pizza.store.model.Order order;

  /**
   * Gets the field order.
   * @return the value of the field order; may be null.
   */
  public pizza.store.model.Order getOrder()
  {
    return order;
  }

  /**
   * Sets the field order.
   * @param _order the new value of the field order.
   */
  public void setOrder(pizza.store.model.Order _order)
  {
    order = _order;
  }

  private java.util.List<java.lang.Integer> productOrders;

  /**
   * Gets the field productOrders.
   * @return the value of the field productOrders; may be null.
   */
  public java.util.List<java.lang.Integer> getProductOrders()
  {
    return productOrders;
  }

  /**
   * Sets the field productOrders.
   * @param _productOrders the new value of the field productOrders.
   */
  public void setProductOrders(java.util.List<java.lang.Integer> _productOrders)
  {
    productOrders = _productOrders;
  }

}
