# FlowersAdmin-Java-MySQL
Simple flower import and export.  
  
  
專案結構
=
 ```JAVA
flowersadmin/
└── src/
    ├── controller/  [UI介面]
    │   ├── admin/  [後臺]
    │   │       AdminHome.java          (後臺首頁)
    │   │       AdminLogin.java         (後臺登入)
    │   │       AdminerManagementFrame.java   (員工管理)
    │   │       CustomerManagementFrame.java  (顧客管理)
    │   │       InboundManagementFrame.java     (進貨管理)
    │   │       OutboundOrderMainFrame.java     (出貨單管理)
    │   │       ProductListFrame.java            (產品列表管理)
    │   │       SupplierManagementFrame.java     (供應商管理)
    │   ├── member/  [前臺]
    │   │       Login.java         (會員登入)
    │   │       Register.java      (會員註冊)
    │   │       Home.java          (會員首頁)
    │   │       MyOrdersFrame.java (我的訂單列表)
    │   └── chart/  [圖表]
    │           StockPie.java   (圖例)
    │
    ├── model/  [模型]
    │       Adminers.java       (管理者)
    │       Customers.java      (顧客)
    │       InboundOrder.java   (進貨單)
    │       OutboundOrder.java  (出貨單)
    │       ProductSales.java   (產品銷售彙總)
    │       Products.java       (產品)
    │       Supplier.java       (廠商)
    │
    ├── dao/  [功能化]
    │       AdminersDao.java       (內部人員)
    │       CustomersDao.java      (顧客)
    │       InboundDetailDao.java  (進貨單明細)
    │       InboundOrderDao.java   (進貨單)
    │       OutboundDetailDao.java (出貨單明細)
    │       OutboundOrderDao.java  (出貨單)
    │       ProductsDao.java       (產品)
    │       SupplierDao.java       (廠商)
    │   └── Impl/
    │           AdminersDaoImpl.java      (內部人員)
    │           CustomersDaoImpl.java     (顧客)
    │           InboundDetailDaoImpl.java (進貨單明細)
    │           InboundOrderDaoImpl.java  (進貨單)
    │           OutboundDetailDaoImpl.java (出貨單明細)
    │           OutboundOrderDaoImpl.java  (出貨單)
    │           ProductsDaoImpl.java       (產品)
    │           SupplierDaoImpl.java       (廠商)
    │
    ├── service/  [邏輯整合]
    │       AdminersService.java       (內部人員)
    │       CustomersService.java      (顧客)
    │       InboundDetailService.java  (進貨單明細)
    │       InboundOrderService.java   (進貨單)
    │       OutboundDetailService.java (出貨單明細)
    │       OutboundOrderService.java  (出貨單)
    │       ProductsService.java       (產品)
    │       SupplierService.java       (廠商)
    │   └── Impl/
    │           AdminersServiceImpl.java       (內部人員)
    │           CustomersServiceImpl.java      (顧客)
    │           InboundDetailServiceImpl.java  (進貨單明細)
    │           InboundOrderServiceImpl.java   (進貨單)
    │           OutboundDetailServiceImpl.java (出貨單明細)
    │           OutboundOrderServiceImpl.java  (出貨單)
    │           ProductsServiceImpl.java       (產品)
    │           SupplierServiceImpl.java       (廠商)
    │
    ├── exception/  [自訂]
    │           ServiceException.java
    │
    └── util/  [其他資源]
            Tool.java        (輔助工具)
            DbConnection.java (資料庫連線)


   ```
  
內容2
=
內容
