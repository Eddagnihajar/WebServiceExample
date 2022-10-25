/**
 * FilliereDao.java
 *
 * This file was auto-generated from WSDL
 * by the Apache Axis 1.4 Apr 22, 2006 (06:55:48 PDT) WSDL2Java emitter.
 */

package Dao;

public interface FilliereDao extends java.rmi.Remote {
    public int updateFilliere(int id, Models.Filliere f) throws java.rmi.RemoteException;
    public Models.Filliere[] getAllFillieres() throws java.rmi.RemoteException;
    public int addFilliere(Models.Filliere f) throws java.rmi.RemoteException;
    public int deleteFilliere(int id) throws java.rmi.RemoteException;
    public int addFilliere1(java.lang.String nom, java.lang.String description) throws java.rmi.RemoteException;
    public Models.Filliere getFilliere(int id) throws java.rmi.RemoteException;
}
