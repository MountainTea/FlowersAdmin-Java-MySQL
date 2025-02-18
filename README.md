# FlowersAdmin-Java-MySQL
Simple flower import and export.  
  
  
專案結構
=
flowersadmin/
└── src/
    ├── chart/
    │   ├── SalesChartApp.java          // 產品銷售/庫存分析圖表
    │   └── InventoryChartApp.java       // 進出貨數據統計圖
    ├── Controller/
    │   ├── admin/
    │   │   ├── AdminListFrame.java      // 內部人員列表
    │   │   └── AdminEditFrame.java      // 內部人員維護
    │   ├── supplier/
    │   │   ├── SupplierListFrame.java   // 供應商列表
    │   │   └── SupplierEditFrame.java   // 供應商維護
    │   ├── product/
    │   │   ├── ProductListFrame.java    // 產品列表
    │   │   └── ProductEditFrame.java    // 產品維護
    │   ├── inbound/
    │   │   ├── InboundOrderListFrame.java   // 進貨單列表
    │   │   └── InboundOrderEditFrame.java   // 進貨單維護
    │   ├── outbound/
    │   │   ├── OutboundOrderListFrame.java  // 出貨單列表
    │   │   └── OutboundOrderEditFrame.java  // 出貨單維護
    │   └── customer/
    │       ├── CustomerListFrame.java   // 顧客列表
    │       └── CustomerEditFrame.java   // 顧客資料維護
    ├── Dao/
    │   ├── AdminDao.java                // 內部人員相關SQL操作
    │   ├── SupplierDao.java             // 供應商相關SQL操作
    │   ├── ProductDao.java              // 產品相關SQL操作
    │   ├── CustomerDao.java             // 顧客相關SQL操作
    │   ├── InboundDao.java              // 進貨單相關SQL操作
    │   ├── OutboundDao.java             // 出貨單相關SQL操作
    │   └── impl/
    │       ├── AdminDaoImpl.java
    │       ├── SupplierDaoImpl.java
    │       ├── ProductDaoImpl.java
    │       ├── CustomerDaoImpl.java
    │       ├── InboundDaoImpl.java
    │       └── OutboundDaoImpl.java
    ├── Model/
    │   ├── Admin.java                   // 內部人員模型
    │   ├── Supplier.java                // 供應商模型
    │   ├── Product.java                 // 產品模型
    │   ├── Customer.java                // 顧客模型
    │   ├── InboundOrder.java            // 進貨單表頭模型
    │   ├── InboundDetail.java           // 進貨單明細模型
    │   ├── OutboundOrder.java           // 出貨單表頭模型
    │   └── OutboundDetail.java          // 出貨單明細模型
    ├── Service/
    │   ├── AdminService.java            // 內部人員業務邏輯
    │   ├── SupplierService.java         // 供應商業務邏輯
    │   ├── ProductService.java          // 產品業務邏輯
    │   ├── CustomerService.java         // 顧客業務邏輯
    │   ├── InboundService.java          // 進貨單業務邏輯
    │   ├── OutboundService.java         // 出貨單業務邏輯
    │   └── impl/
    │       ├── AdminServiceImpl.java
    │       ├── SupplierServiceImpl.java
    │       ├── ProductServiceImpl.java
    │       ├── CustomerServiceImpl.java
    │       ├── InboundServiceImpl.java
    │       └── OutboundServiceImpl.java
    └── Util/
        ├── DBUtil.java                // 資料庫連線與工具類
        └── Constants.java             // 常數定義與配置
  
  
內容2
=
內容
