package Dao;

public class EtudiantDaoProxy implements Dao.EtudiantDao {
  private String _endpoint = null;
  private Dao.EtudiantDao etudiantDao = null;
  
  public EtudiantDaoProxy() {
    _initEtudiantDaoProxy();
  }
  
  public EtudiantDaoProxy(String endpoint) {
    _endpoint = endpoint;
    _initEtudiantDaoProxy();
  }
  
  private void _initEtudiantDaoProxy() {
    try {
      etudiantDao = (new Dao.EtudiantDaoServiceLocator()).getetudiantDao();
      if (etudiantDao != null) {
        if (_endpoint != null)
          ((javax.xml.rpc.Stub)etudiantDao)._setProperty("javax.xml.rpc.service.endpoint.address", _endpoint);
        else
          _endpoint = (String)((javax.xml.rpc.Stub)etudiantDao)._getProperty("javax.xml.rpc.service.endpoint.address");
      }
      
    }
    catch (javax.xml.rpc.ServiceException serviceException) {}
  }
  
  public String getEndpoint() {
    return _endpoint;
  }
  
  public void setEndpoint(String endpoint) {
    _endpoint = endpoint;
    if (etudiantDao != null)
      ((javax.xml.rpc.Stub)etudiantDao)._setProperty("javax.xml.rpc.service.endpoint.address", _endpoint);
    
  }
  
  public Dao.EtudiantDao getEtudiantDao() {
    if (etudiantDao == null)
      _initEtudiantDaoProxy();
    return etudiantDao;
  }
  
  public int addEtudiant(int idF, Models.Etudiant e) throws java.rmi.RemoteException{
    if (etudiantDao == null)
      _initEtudiantDaoProxy();
    return etudiantDao.addEtudiant(idF, e);
  }
  
  public int addEtudiant1(java.lang.String nom, Models.Filliere f) throws java.rmi.RemoteException{
    if (etudiantDao == null)
      _initEtudiantDaoProxy();
    return etudiantDao.addEtudiant1(nom, f);
  }
  
  public Models.Etudiant[] getAlletudiants() throws java.rmi.RemoteException{
    if (etudiantDao == null)
      _initEtudiantDaoProxy();
    return etudiantDao.getAlletudiants();
  }
  
  public Models.Etudiant getEtudiant(int id) throws java.rmi.RemoteException{
    if (etudiantDao == null)
      _initEtudiantDaoProxy();
    return etudiantDao.getEtudiant(id);
  }
  
  public int deleteEtudiant(int id) throws java.rmi.RemoteException{
    if (etudiantDao == null)
      _initEtudiantDaoProxy();
    return etudiantDao.deleteEtudiant(id);
  }
  
  public int updateEtudiant(int id, Models.Etudiant e, int idF) throws java.rmi.RemoteException{
    if (etudiantDao == null)
      _initEtudiantDaoProxy();
    return etudiantDao.updateEtudiant(id, e, idF);
  }
  
  
}