byYunzhu不要让术语“架构”吓倒你。 架构只是一个 XML 文件，其中包含 XML 数据文件中可以和不能驻留的规则。 架构文件通常使用 .xsd 文件扩展名，而 XML 数据文件使用 .xml 扩展名。

架构允许程序验证数据。 它们为构建数据提供了框架，并确保对创建者和任何其他用户有意义。 例如，如果用户输入无效数据（如日期字段中的文本），程序可以提示用户输入正确的数据。 只要 XML 文件中的数据符合给定架构中的规则，任何支持 XML 的程序都可以使用该架构来读取、解释和处理数据。 例如，如下图所示，Excel 可以根据 CAT 架构验证 <CAT> 数据。

架构可能会变得复杂，教你如何创建架构超出了本文的范围。 (此外，你可能还有一个知道如何操作的 IT 部门。) 但是，它有助于了解架构的外观。 以下架构定义了 <CAT> ... </CAT> 标记集的规则。

<xsd:element name="CAT">  
  <xsd:complexType>  
    <xsd:sequence>
      <xsd:element name="NAME" type="xsd:string"/>
      <xsd:element name="BREED" type="xsd:string"/>
      <xsd:element name="AGE" type="xsd:positiveInteger"/>
      <xsd:element name="ALTERED" type="xsd:boolean"/>
      <xsd:element name="DECLAWED" type="xsd:boolean"/>
      <xsd:element name="LICENSE" type="xsd:string"/>
      <xsd:element name="OWNER" type="xsd:string"/>        
    </xsd:sequence>
  </xsd:complexType>
</xsd:element>
无需担心了解示例中的所有内容。 请牢记以下事实：

示例架构中的行项称为声明。 如果需要有关动物的其他信息（例如其颜色或标记），则 IT 部门很可能向架构添加声明。 可以随着业务需求的发展更改 XML 系统。

声明提供对数据结构的巨大控制。 例如， <xsd:sequence> 声明意味着标记（如 <NAME> 和 <BREED> ）必须按上面列出的顺序出现。 声明还可以控制用户可以输入的数据类型。 例如，上述架构需要猫的年龄的正数，而布尔值 (TRUE 或 FALSE) ALTERED 和 DECLAWED 标记的值。

如果 XML 文件中的数据符合架构提供的规则，则表示该数据有效。 根据架构检查 XML 数据文件的过程称为 (逻辑上足够) 验证。 使用架构的最大优势在于，它们可以帮助防止数据损坏。 它们还便于查找损坏的数据，因为 XML 在遇到问题时会停止。

快速查看转换
如前所述，XML 还提供了使用或重用数据的强大方法。 重用数据的机制称为可扩展样式表语言转换 (XSLT) ，或简称为转换。

可以 (，IT 部门) 还可以使用转换在后端系统（如数据库）之间交换数据。 例如，假设数据库 A 将销售数据存储在适用于销售部门的表结构中。 数据库 B 将收入和支出数据存储在为会计部门定制的表结构中。 数据库 B 可以使用转换来接受来自 A 的数据，并将该数据写入正确的表。

数据文件、架构和转换的组合构成了一个基本的 XML 系统。 下图显示了此类系统通常的工作原理。 针对架构验证数据文件，然后通过转换以任意数量的可用方式呈现数据文件。 在这种情况下，转换将数据部署到网页中的表