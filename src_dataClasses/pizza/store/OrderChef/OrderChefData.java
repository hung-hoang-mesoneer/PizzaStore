package pizza.store.OrderChef;

/**
 */
@SuppressWarnings("all")
@javax.annotation.Generated(comments="This is the java file of the ivy data class OrderChefData", value={"ch.ivyteam.ivy.scripting.streamInOut.IvyScriptJavaClassBuilder"})
public class OrderChefData extends ch.ivyteam.ivy.scripting.objects.CompositeObject
{
  /** SerialVersionUID */
  private static final long serialVersionUID = 7361617106149303642L;

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

  private java.lang.String nameSearch;

  /**
   * Gets the field nameSearch.
   * @return the value of the field nameSearch; may be null.
   */
  public java.lang.String getNameSearch()
  {
    return nameSearch;
  }

  /**
   * Sets the field nameSearch.
   * @param _nameSearch the new value of the field nameSearch.
   */
  public void setNameSearch(java.lang.String _nameSearch)
  {
    nameSearch = _nameSearch;
  }

}
