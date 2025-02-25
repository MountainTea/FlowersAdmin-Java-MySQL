# FlowersAdmin-Java-MySQL
這是一套採簡化花商管理流程為出發點，融合多個模組協同運作，實現全面的進出貨、庫存與銷售監控。
* 直覺式操作介面
* 模組化架構
* 數據整合與分析
*  數位化轉型推動

  詳細介紹請參考 [簡易說明書(.PDF)](https://github.com/MountainTea/FlowersAdmin-Java-MySQL/blob/main/pptpdf/%E7%B0%A1%E6%98%93%E8%AA%AA%E6%98%8E%E6%9B%B8.pdf "簡易說明書.pdf")


---


## 技術
- ### **程式語言：** Java  
- ### **UI 技術：** Java Swing  
- ### **資料庫：** MySQL
- ### **開發環境：** Eclipse IDE for Java Developers (2024-12)


---
  
  
## 專案結構
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
    │   │       orderform/       [下單流程]
    │   │             MemberOrderDetailDialog.java (會員訂單明細)
    │   │             Step1Basic.java              (訂單基本資料確認)
    │   │             Step2Detail.java             (訂單明細編輯)
    │   │             Step3Confirm.java            (訂單確認下單)
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
    │       OrderFormData.java  (訂單資料暫存)
    │       OrderDetailData.java (訂單明細資料)
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
    ├── exception/  [自訂異常處理機制]
    │           ServiceException.java
    │
    └── util/  [其他資源]
            Tool.java        (輔助工具)
            DbConnection.java (資料庫連線)

   ```
  
---


## 下載資源

- ### **資料庫：** [下載](https://github.com/MountainTea/FlowersAdmin-Java-MySQL/tree/main/sql "MySQL資料表下載")
- ### **執行檔：** [下載](https://github.com/MountainTea/FlowersAdmin-Java-MySQL/tree/main/jar "(.jar)下載")
 ※ 請將資料表(.sql)匯入再行啟動程式(.jar)。
