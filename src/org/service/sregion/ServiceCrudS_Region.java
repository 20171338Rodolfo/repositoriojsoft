/**
 * ServiceCrudS_Region.java
 *
 * This file was auto-generated from WSDL
 * by the Apache Axis 1.4 Apr 22, 2006 (06:55:48 PDT) WSDL2Java emitter.
 */

package org.service.sregion;

public interface ServiceCrudS_Region extends java.rmi.Remote {
    public java.lang.String agregaS_Region(int id, java.lang.String name) throws java.rmi.RemoteException;
    public java.lang.String eliminaS_Region(int id) throws java.rmi.RemoteException;
    public java.lang.String actualizarS_Region(java.lang.String name, int id) throws java.rmi.RemoteException;
    public java.lang.String consultaIndividualS_Region(int id) throws java.rmi.RemoteException;
    public void connectdatabaseOracle() throws java.rmi.RemoteException;
}
