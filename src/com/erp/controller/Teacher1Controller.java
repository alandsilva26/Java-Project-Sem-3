/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.erp.controller;

import com.erp.Connect;
import com.jfoenix.controls.JFXDrawer;
import java.io.IOException;
import java.net.URL;
import java.sql.Connection;
import java.sql.ResultSet;
import java.util.ResourceBundle;
import java.util.logging.Level;
import java.util.logging.Logger;
import javafx.beans.property.SimpleStringProperty;
import javafx.beans.value.ObservableValue;
import javafx.collections.FXCollections;
import javafx.collections.ObservableList;
import javafx.fxml.FXML;
import javafx.fxml.FXMLLoader;
import javafx.fxml.Initializable;
import javafx.scene.control.TableColumn;
import javafx.scene.control.TableView;
import javafx.scene.input.MouseEvent;
import javafx.scene.layout.AnchorPane;
import javafx.scene.layout.VBox;
import javafx.util.Callback;

/**
 * FXML Controller class
 *
 * @author Grace
 */
public class Teacher1Controller implements Initializable {

    @FXML
    private TableView tableview;
    @FXML
    private AnchorPane tableanchor;

    private ObservableList<ObservableList> items;

    private ObservableList<ObservableList> data;

    private boolean status;

    @FXML
    private JFXDrawer drawer;

    /**
     * Initializes the controller class.
     */
    @Override
    public void initialize(URL url, ResourceBundle rb) {
        status = true;
        try {
            VBox x = FXMLLoader.load(getClass().getResource("/com/erp/view/tabledrawerteacher.fxml"));
            System.out.print("here");
            drawer.setSidePane(x);
            /*            if (drawer.isOpened()) {
            drawer.close();
            drawer.setPrefWidth(0);
            } else {*/
            drawer.open();
        } catch (IOException ex) {
            Logger.getLogger(Teacher1Controller.class.getName()).log(Level.SEVERE, null, ex);
        }

    }

    @FXML
    void onViewTables(MouseEvent event) {
        try {
            VBox v = FXMLLoader.load(getClass().getResource("/com/erp/view/tabledrawerteacher.fxml"));
            drawer.setSidePane(v);
            /*            if (drawer.isOpened()) {
            drawer.close();
            drawer.setPrefWidth(0);
            } else {*/
            drawer.open();
            //}
        } catch (IOException ex) {
            Logger.getLogger(Teacher1Controller.class.getName()).log(Level.SEVERE, null, ex);
        }
        setTable();
    }

    @FXML
    void onReload(MouseEvent event) {
        try {
            VBox x = FXMLLoader.load(getClass().getResource("/com/erp/view/test.fxml"));
            System.out.print("here");
            drawer.setSidePane(x);
            /*            if (drawer.isOpened()) {
            drawer.close();
            drawer.setPrefWidth(0);
            } else {*/
            drawer.open();
            tableview.getColumns().clear();
            status = true;
            setTable();
            //}
        } catch (IOException ex) {
            Logger.getLogger(Teacher1Controller.class.getName()).log(Level.SEVERE, null, ex);
        }

    }

    @FXML
    void onEdit(MouseEvent event) {
    }

    void setTable() {
        if (status) {
            //LOADING TABLE
            Connection c;
            data = FXCollections.observableArrayList();
            try {
                c = Connect.getConnection();
                //SQL FOR SELECTING ALL OF CUSTOMER
                String SQL = "SELECT * from practicalmarksheet1";
                //ResultSet
                ResultSet rs = c.createStatement().executeQuery(SQL);

                /**
                 * ********************************
                 * TABLE COLUMN ADDED DYNAMICALLY *
                 * ********************************
                 */
                for (int i = 0; i < rs.getMetaData().getColumnCount(); i++) {
                    //We are using non property style for making dynamic table
                    final int j = i;
                    TableColumn col = new TableColumn(rs.getMetaData().getColumnName(i + 1));
                    col.setCellValueFactory(new Callback<TableColumn.CellDataFeatures<ObservableList, String>, ObservableValue<String>>() {
                        public ObservableValue<String> call(TableColumn.CellDataFeatures<ObservableList, String> param) {
                            return new SimpleStringProperty(param.getValue().get(j).toString());
                        }
                    });
                    tableview.getColumns().addAll(col);
                    System.out.println("Column [" + i + "] ");
                }

                /**
                 * ******************************
                 * Data added to ObservableList * ******************************
                 */
                while (rs.next()) {
                    //Iterate Row
                    ObservableList<String> row = FXCollections.observableArrayList();
                    for (int i = 1; i <= rs.getMetaData().getColumnCount(); i++) {
                        //Iterate Column
                        row.add(rs.getString(i));
                    }
                    System.out.println("Row [1] added " + row);
                    data.add(row);

                }

                //FINALLY ADDED TO TableView
                tableview.setItems(data);
            } catch (Exception e) {
                System.out.println("Error on Building Data " + e);
            }
            status = false;
        }
    }
}
