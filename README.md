# FlowersAdmin-Java-MySQL
Simple flower import and export.  
  
  
專案結構
=
 ```階層
flowersadmin/
└── src/
   ├── controller/
   │   └── ... (各功能的 Controller 類別) ...
   ├── dao/
   │   ├── impl/
   │   │   ├── AdminersDaoImpl.java
   │   │   ├── CustomersDaoImpl.java
   │   │   ├── InboundDetailDaoImpl.java
   │   │   ├── InboundOrderDaoImpl.java
   │   │   ├── OutboundDetailDaoImpl.java
   │   │   ├── OutboundOrderDaoImpl.java
   │   │   └── ProductsDaoImpl.java
   │   ├── AdminersDao.java
   │   ├── CustomersDao.java
   │   ├── InboundDetailDao.java
   │   ├── InboundOrderDao.java
   │   ├── OutboundDetailDao.java
   │   ├── OutboundOrderDao.java
   │   └── ProductsDao.java
   ├── exception/
   │   └── ServiceException.java
   ├── model/
   │   ├── Adminers.java
   │   ├── Customers.java
   │   ├── InboundDetail.java
   │   ├── InboundOrder.java
   │   ├── OutboundDetail.java
   │   ├── OutboundOrder.java
   │   └── Products.java
   ├── service/
   │   ├── impl/
   │   │   ├── AdminersServiceImpl.java
   │   │   ├── CustomersServiceImpl.java
   │   │   ├── InboundDetailServiceImpl.java
   │   │   ├── InboundOrderServiceImpl.java
   │   │   ├── OutboundDetailServiceImpl.java
   │   │   ├── OutboundOrderServiceImpl.java
   │   │   └── ProductsServiceImpl.java
   │   ├── AdminersService.java
   │   ├── CustomersService.java
   │   ├── InboundDetailService.java
   │   ├── InboundOrderService.java
   │   ├── OutboundDetailService.java
   │   ├── OutboundOrderService.java
   │   └── ProductsService.java
   └── util/
       ├── DbConnection.java      // 負責資料庫連線的工具類
       └── Tool.java              // 其他通用工具方法或常數
   ```
  
內容2
=
內容
