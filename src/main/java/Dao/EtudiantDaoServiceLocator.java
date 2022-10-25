/**
 * EtudiantDaoServiceLocator.java
 *
 * This file was auto-generated from WSDL
 * by the Apache Axis 1.4 Apr 22, 2006 (06:55:48 PDT) WSDL2Java emitter.
 */

package Dao;
import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlRootElement;
import javax.jws.WebMethod;
import javax.jws.WebService;
public class EtudiantDaoServiceLocator extends org.apache.axis.client.Service implements Dao.EtudiantDaoService {

    public EtudiantDaoServiceLocator() {
    }


    public EtudiantDaoServiceLocator(org.apache.axis.EngineConfiguration config) {
        super(config);
    }

    public EtudiantDaoServiceLocator(java.lang.String wsdlLoc, javax.xml.namespace.QName sName) throws javax.xml.rpc.ServiceException {
        super(wsdlLoc, sName);
    }

    // Use to get a proxy class for etudiantDao
    private java.lang.String etudiantDao_address = "http://localhost:8080/ProjetEtudiant/services/etudiantDao";

    public java.lang.String getetudiantDaoAddress() {
        return etudiantDao_address;
    }

    // The WSDD service name defaults to the port name.
    private java.lang.String etudiantDaoWSDDServiceName = "etudiantDao";

    public java.lang.String getetudiantDaoWSDDServiceName() {
        return etudiantDaoWSDDServiceName;
    }

    public void setetudiantDaoWSDDServiceName(java.lang.String name) {
        etudiantDaoWSDDServiceName = name;
    }

    public Dao.EtudiantDao getetudiantDao() throws javax.xml.rpc.ServiceException {
       java.net.URL endpoint;
        try {
            endpoint = new java.net.URL(etudiantDao_address);
        }
        catch (java.net.MalformedURLException e) {
            throw new javax.xml.rpc.ServiceException(e);
        }
        return getetudiantDao(endpoint);
    }

    public Dao.EtudiantDao getetudiantDao(java.net.URL portAddress) throws javax.xml.rpc.ServiceException {
        try {
            Dao.EtudiantDaoSoapBindingStub _stub = new Dao.EtudiantDaoSoapBindingStub(portAddress, this);
            _stub.setPortName(getetudiantDaoWSDDServiceName());
            return _stub;
        }
        catch (org.apache.axis.AxisFault e) {
            return null;
        }
    }

    public void setetudiantDaoEndpointAddress(java.lang.String address) {
        etudiantDao_address = address;
    }

    /**
     * For the given interface, get the stub implementation.
     * If this service has no port for the given interface,
     * then ServiceException is thrown.
     */
    public java.rmi.Remote getPort(Class serviceEndpointInterface) throws javax.xml.rpc.ServiceException {
        try {
            if (Dao.EtudiantDao.class.isAssignableFrom(serviceEndpointInterface)) {
                Dao.EtudiantDaoSoapBindingStub _stub = new Dao.EtudiantDaoSoapBindingStub(new java.net.URL(etudiantDao_address), this);
                _stub.setPortName(getetudiantDaoWSDDServiceName());
                return _stub;
            }
        }
        catch (java.lang.Throwable t) {
            throw new javax.xml.rpc.ServiceException(t);
        }
        throw new javax.xml.rpc.ServiceException("There is no stub implementation for the interface:  " + (serviceEndpointInterface == null ? "null" : serviceEndpointInterface.getName()));
    }

    /**
     * For the given interface, get the stub implementation.
     * If this service has no port for the given interface,
     * then ServiceException is thrown.
     */
    public java.rmi.Remote getPort(javax.xml.namespace.QName portName, Class serviceEndpointInterface) throws javax.xml.rpc.ServiceException {
        if (portName == null) {
            return getPort(serviceEndpointInterface);
        }
        java.lang.String inputPortName = portName.getLocalPart();
        if ("etudiantDao".equals(inputPortName)) {
            return getetudiantDao();
        }
        else  {
            java.rmi.Remote _stub = getPort(serviceEndpointInterface);
            ((org.apache.axis.client.Stub) _stub).setPortName(portName);
            return _stub;
        }
    }

    public javax.xml.namespace.QName getServiceName() {
        return new javax.xml.namespace.QName("http://Dao", "etudiantDaoService");
    }

    private java.util.HashSet ports = null;

    public java.util.Iterator getPorts() {
        if (ports == null) {
            ports = new java.util.HashSet();
            ports.add(new javax.xml.namespace.QName("http://Dao", "etudiantDao"));
        }
        return ports.iterator();
    }

    /**
    * Set the endpoint address for the specified port name.
    */
    public void setEndpointAddress(java.lang.String portName, java.lang.String address) throws javax.xml.rpc.ServiceException {
        
if ("etudiantDao".equals(portName)) {
            setetudiantDaoEndpointAddress(address);
        }
        else 
{ // Unknown Port Name
            throw new javax.xml.rpc.ServiceException(" Cannot set Endpoint Address for Unknown Port" + portName);
        }
    }

    /**
    * Set the endpoint address for the specified port name.
    */
    public void setEndpointAddress(javax.xml.namespace.QName portName, java.lang.String address) throws javax.xml.rpc.ServiceException {
        setEndpointAddress(portName.getLocalPart(), address);
    }

}
