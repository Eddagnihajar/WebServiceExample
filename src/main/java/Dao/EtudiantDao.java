/**
 * EtudiantDao.java
 *
 * This file was auto-generated from WSDL
 * by the Apache Axis 1.4 Apr 22, 2006 (06:55:48 PDT) WSDL2Java emitter.
 */

package Dao;

public interface EtudiantDao extends java.rmi.Remote {
    public int addEtudiant(int idF, Models.Etudiant e) throws java.rmi.RemoteException;
    public int addEtudiant1(java.lang.String nom, Models.Filliere f) throws java.rmi.RemoteException;
    public Models.Etudiant[] getAlletudiants() throws java.rmi.RemoteException;
    public Models.Etudiant getEtudiant(int id) throws java.rmi.RemoteException;
    public int deleteEtudiant(int id) throws java.rmi.RemoteException;
    public int updateEtudiant(int id, Models.Etudiant e, int idF) throws java.rmi.RemoteException;
}
