/**
 * FilliereDaoServiceLocator.java
 *
 * This file was auto-generated from WSDL
 * by the Apache Axis 1.4 Apr 22, 2006 (06:55:48 PDT) WSDL2Java emitter.
 */

package Dao;

public class FilliereDaoServiceLocator extends org.apache.axis.client.Service implements Dao.FilliereDaoService {

    public FilliereDaoServiceLocator() {
    }


    public FilliereDaoServiceLocator(org.apache.axis.EngineConfiguration config) {
        super(config);
    }

    public FilliereDaoServiceLocator(java.lang.String wsdlLoc, javax.xml.namespace.QName sName) throws javax.xml.rpc.ServiceException {
        super(wsdlLoc, sName);
    }

    // Use to get a proxy class for filliereDao
    private java.lang.String filliereDao_address = "http://localhost:8080/ProjetEtudiant/services/filliereDao";

    public java.lang.String getfilliereDaoAddress() {
        return filliereDao_address;
    }

    // The WSDD service name defaults to the port name.
    private java.lang.String filliereDaoWSDDServiceName = "filliereDao";

    public java.lang.String getfilliereDaoWSDDServiceName() {
        return filliereDaoWSDDServiceName;
    }

    public void setfilliereDaoWSDDServiceName(java.lang.String name) {
        filliereDaoWSDDServiceName = name;
    }

    public Dao.FilliereDao getfilliereDao() throws javax.xml.rpc.ServiceException {
       java.net.URL endpoint;
        try {
            endpoint = new java.net.URL(filliereDao_address);
        }
        catch (java.net.MalformedURLException e) {
            throw new javax.xml.rpc.ServiceException(e);
        }
        return getfilliereDao(endpoint);
    }

    public Dao.FilliereDao getfilliereDao(java.net.URL portAddress) throws javax.xml.rpc.ServiceException {
        try {
            Dao.FilliereDaoSoapBindingStub _stub = new Dao.FilliereDaoSoapBindingStub(portAddress, this);
            _stub.setPortName(getfilliereDaoWSDDServiceName());
            return _stub;
        }
        catch (org.apache.axis.AxisFault e) {
            return null;
        }
    }

    public void setfilliereDaoEndpointAddress(java.lang.String address) {
        filliereDao_address = address;
    }

    /**
     * For the given interface, get the stub implementation.
     * If this service has no port for the given interface,
     * then ServiceException is thrown.
     */
    public java.rmi.Remote getPort(Class serviceEndpointInterface) throws javax.xml.rpc.ServiceException {
        try {
            if (Dao.FilliereDao.class.isAssignableFrom(serviceEndpointInterface)) {
                Dao.FilliereDaoSoapBindingStub _stub = new Dao.FilliereDaoSoapBindingStub(new java.net.URL(filliereDao_address), this);
                _stub.setPortName(getfilliereDaoWSDDServiceName());
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
        if ("filliereDao".equals(inputPortName)) {
            return getfilliereDao();
        }
        else  {
            java.rmi.Remote _stub = getPort(serviceEndpointInterface);
            ((org.apache.axis.client.Stub) _stub).setPortName(portName);
            return _stub;
        }
    }

    public javax.xml.namespace.QName getServiceName() {
        return new javax.xml.namespace.QName("http://Dao", "filliereDaoService");
    }

    private java.util.HashSet ports = null;

    public java.util.Iterator getPorts() {
        if (ports == null) {
            ports = new java.util.HashSet();
            ports.add(new javax.xml.namespace.QName("http://Dao", "filliereDao"));
        }
        return ports.iterator();
    }

    /**
    * Set the endpoint address for the specified port name.
    */
    public void setEndpointAddress(java.lang.String portName, java.lang.String address) throws javax.xml.rpc.ServiceException {
        
if ("filliereDao".equals(portName)) {
            setfilliereDaoEndpointAddress(address);
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
