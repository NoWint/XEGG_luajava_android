Byyunzhu
XML语法规则
文档第一行必须是声明
<?xml version="1.0" encoding="UTF-8"?>
version:xml默认的版本号，必须存在
encoding:本XML文件的编码

XML的标签（元素）规则
标签由一对尖括号和合法标识符组成: <name></name>，必须存在一个根标签，有且只能有一个。
标签必须成对出现，有开始，有结束: <name></name>
特殊的标签可以不成对，但是必须有结束标记，如:<br/>
标签中可以定义属性，属性和标签名空格隔开,属性值必须用引号引起来<student id = “1”></name>
（注意：id标签内容唯一）
标签需要正确的嵌套

XML其他组成
XML文件中可以定义注释信息：<!– 注释内容 -->
XML文件中可以存在以下特殊字符:

&lt;    <  小于
&gt;    >  大于
&amp;   &  和号
&apos;  '  单引号
&quot;  "  引号
XML文件中可以存在CDATA区:在其中可以直接使用特殊字符
<![CDATA[ …内容… ]]>

XML文档约束
DTD
编写DTD约束文档，后缀必须是.dtd

<!ELEMENT 书架 (书+)>
<!ELEMENT 书 (书名,作者,售价)>
<!ELEMENT 书名 (#PCDATA)>
<!ELEMENT 作者 (#PCDATA)>
<!ELEMENT 售价 (#PCDATA)>
约束好了就只能按照约束来写XML文件
在需要编写的XML文件中导入该DTD约束文档
<!DOCTYPE 当前文件名 SYSTEM "约束文件.dtd">
按照约束的规定编写XML文件的内容。
优缺点：可以约束XML文件的编写，但是不能约束具体的数据类型。

schema
可以约束具体的数据类型，约束能力更强。
schema本身也是一个XML文件，本身也受其他约束文件约束。
使用步骤：
①：编写schema约束文档，后缀必须是.xsd，具体的形式到代码中观看。
②：在需要编写的XML文件中导入该schema约束文档
③：按照约束内容编写XML文件的标签。
优缺点：可以约束XML具体的数据类型

XML解析
使用程序读取XML中的数据
两种解析方式：SAX解析、DOM解析

DOM解析文档对象模型
对象模型分为：
Document对象：整个xml文档
Element对象：标签
Attribute对象：属性
Text对象：文本内容
这些都继承于Node对象

<?xml version="1.0" encoding="UTF-8" ?><students>
	<!--第一个学生信息-->
	<student id="1">
		<name>张三</name>
		<age>23</age>
	</student>
	<!--第二个学生信息-->
	<student id="2">
		<name>李四</name>
		<age>24</age>
	</student>
</students>