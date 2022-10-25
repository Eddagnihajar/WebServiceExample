package Dao;

public class FilliereDaoProxy implements Dao.FilliereDao {
  private String _endpoint = null;
  private Dao.FilliereDao filliereDao = null;
  
  public FilliereDaoProxy() {
    _initFilliereDaoProxy();
  }
  
  public FilliereDaoProxy(String endpoint) {
    _endpoint = endpoint;
    _initFilliereDaoProxy();
  }
  
  private void _initFilliereDaoProxy() {
    try {
      filliereDao = (new Dao.FilliereDaoServiceLocator()).getfilliereDao();
      if (filliereDao != null) {
        if (_endpoint != null)
          ((javax.xml.rpc.Stub)filliereDao)._setProperty("javax.xml.rpc.service.endpoint.address", _endpoint);
        else
          _endpoint = (String)((javax.xml.rpc.Stub)filliereDao)._getProperty("javax.xml.rpc.service.endpoint.address");
      }
      
    }
    catch (javax.xml.rpc.ServiceException serviceException) {}
  }
  
  public String getEndpoint() {
    return _endpoint;
  }
  
  public void setEndpoint(String endpoint) {
    _endpoint = endpoint;
    if (filliereDao != null)
      ((javax.xml.rpc.Stub)filliereDao)._setProperty("javax.xml.rpc.service.endpoint.address", _endpoint);
    
  }
  
  public Dao.FilliereDao getFilliereDao() {
    if (filliereDao == null)
      _initFilliereDaoProxy();
    return filliereDao;
  }
  
  public int updateFilliere(int id, Models.Filliere f) throws java.rmi.RemoteException{
    if (filliereDao == null)
      _initFilliereDaoProxy();
    return filliereDao.updateFilliere(id, f);
  }
  
  public Models.Filliere[] getAllFillieres() throws java.rmi.RemoteException{
    if (filliereDao == null)
      _initFilliereDaoProxy();
    return filliereDao.getAllFillieres();
  }
  
  public int addFilliere(Models.Filliere f) throws java.rmi.RemoteException{
    if (filliereDao == null)
      _initFilliereDaoProxy();
    return filliereDao.addFilliere(f);
  }
  
  public int deleteFilliere(int id) throws java.rmi.RemoteException{
    if (filliereDao == null)
      _initFilliereDaoProxy();
    return filliereDao.deleteFilliere(id);
  }
  
  public int addFilliere1(java.lang.String nom, java.lang.String description) throws java.rmi.RemoteException{
    if (filliereDao == null)
      _initFilliereDaoProxy();
    return filliereDao.addFilliere1(nom, description);
  }
  
  public Models.Filliere getFilliere(int id) throws java.rmi.RemoteException{
    if (filliereDao == null)
      _initFilliereDaoProxy();
    return filliereDao.getFilliere(id);
  }
  
  
}