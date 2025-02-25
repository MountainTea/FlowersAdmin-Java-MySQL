# FlowersAdmin-Java-MySQL
Simple flower import and export.  
  
  
專案結構
=
 ```階層
flowersadmin/
└── src/
    ├── controller/ [UI]
    │   ├── admin/
    │   │   後臺管理：
    │   │       AdminHome.java          (後臺首頁)
    │   │       AdminLogin.java         (後臺登入)
    │   │       AdminerManagementFrame.java   (員工管理)
    │   │       CustomerManagementFrame.java  (顧客管理)
    │   │       InboundManagementFrame.java     (進貨管理)
    │   │       OutboundOrderMainFrame.java     (出貨單管理)
    │   │       ProductListFrame.java            (產品列表管理)
    │   │       SupplierManagementFrame.java     (供應商管理)
    │   ├── member/
    │   │   會員前台：
    │   │       Login.java         (會員登入)
    │   │       Register.java      (會員註冊)
    │   │       Home.java          (會員首頁)
    │   │       MyOrdersFrame.java (我的訂單列表)
    │   └── chart/
    │       圖表顯示：
    │       StockPie.java   (庫存比例圖)
    │
    ├── model/  [模型]
    │   ├── Adminers.java       (管理者)
    │   ├── Customers.java      (顧客)
    │   ├── InboundOrder.java   (進貨單)
    │   ├── OutboundOrder.java  (出貨單)
    │   ├── ProductSales.java   (產品銷售彙總)
    │   ├── Products.java       (產品)
    │   └── Supplier.java       (廠商)
    │
    ├── dao/  [功能化]
    │   │       AdminersDao.java       (內部人員 DAO 介面)
    │   │       CustomersDao.java      (顧客 DAO 介面)
    │   │       InboundDetailDao.java  (進貨單明細 DAO 介面)
    │   │       InboundOrderDao.java   (進貨單 DAO 介面)
    │   │       OutboundDetailDao.java (出貨單明細 DAO 介面)
    │   │       OutboundOrderDao.java  (出貨單 DAO 介面)
    │   │       ProductsDao.java       (產品 DAO 介面)
    │   │       SupplierDao.java       (廠商 DAO 介面)
    │   └── Impl/
    │           AdminersDaoImpl.java      (內部人員 DAO 實作)
    │           CustomersDaoImpl.java     (顧客 DAO 實作)
    │           InboundDetailDaoImpl.java (進貨單明細 DAO 實作)
    │           InboundOrderDaoImpl.java  (進貨單 DAO 實作)
    │           OutboundDetailDaoImpl.java (出貨單明細 DAO 實作)
    │           OutboundOrderDaoImpl.java  (出貨單 DAO 實作)
    │           ProductsDaoImpl.java       (產品 DAO 實作)
    │           SupplierDaoImpl.java       (廠商 DAO 實作)
    │
    ├── service/  [邏輯整合]
    │   │       AdminersService.java       (內部人員業務邏輯介面)
    │   │       CustomersService.java      (顧客業務邏輯介面)
    │   │       InboundDetailService.java  (進貨單明細業務邏輯介面)
    │   │       InboundOrderService.java   (進貨單業務邏輯介面)
    │   │       OutboundDetailService.java (出貨單明細業務邏輯介面)
    │   │       OutboundOrderService.java  (出貨單業務邏輯介面)
    │   │       ProductsService.java       (產品業務邏輯介面)
    │   │       SupplierService.java       (廠商業務邏輯介面)
    │   └── Impl/
    │           AdminersServiceImpl.java       (內部人員業務邏輯實作)
    │           CustomersServiceImpl.java      (顧客業務邏輯實作)
    │           InboundDetailServiceImpl.java  (進貨單明細業務邏輯實作)
    │           InboundOrderServiceImpl.java   (進貨單業務邏輯實作)
    │           OutboundDetailServiceImpl.java (出貨單明細業務邏輯實作)
    │           OutboundOrderServiceImpl.java  (出貨單業務邏輯實作)
    │           ProductsServiceImpl.java       (產品業務邏輯實作)
    │           SupplierServiceImpl.java       (廠商業務邏輯實作)
    │
    ├── exception/
    │   共用例外處理：
    │       ServiceException.java  (服務例外)
    │
    └── util/
        公用工具與資源：
            AppContext.java  (應用程式上下文)
            Tool.java        (工具類)
            DbConnection.java (資料庫連線)

   ```
  
內容2
=
內容
