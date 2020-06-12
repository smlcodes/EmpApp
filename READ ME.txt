# EmpApp

Employee Application-Spring+MySQL+Maven

- we are using  'emp99' table present in the MySQL database. 

- It has 4 fields: id, name, salary, and designation.

- id, name, salary, and designation


```
CREATE TABLE `emp99` (
	`id` INT(11) NOT NULL AUTO_INCREMENT,
	`name` VARCHAR(500) NULL DEFAULT NULL,
	`salary` DOUBLE NULL DEFAULT NULL,
	`designation` VARCHAR(300) NULL DEFAULT NULL,
	PRIMARY KEY (`id`)
)
COLLATE='utf8mb4_general_ci'
ENGINE=InnoDB
;
```



## Configure Database Details
EmpApp\WebContent\WEB-INF\spring-servlet.xml

```
<bean id="ds" class="org.springframework.jdbc.datasource.DriverManagerDataSource">  
<property name="driverClassName" value="com.mysql.jdbc.Driver"></property>  
<property name="url" value="jdbc:mysql://localhost:3306/emp?serverTimezone=UTC"></property>  
<property name="username" value="root"></property>  
<property name="password" value="root"></property>  
</bean>  
```



---------------------------
You need to add the "Maven Dependency" in the Deployment Assembly

- right click on your project and choose properties.
- click on Deployment Assembly.
- click add
- click on "Java Build Path Entries"
- select Maven Dependencies"
- click Finish.
- Rebuild and deploy again
