ByYunzhu
下面的代码示例演示了一种编写转换的方法。 它将 <CAT> 数据加载到网页上的表中。 同样，此示例的要点不是演示如何编写转换，而是向你展示转换可以采用的一种形式。

<?xml version="1.0"?>
<xsl:stylesheet version="1.0"> 
<TABLE>
  <TR>
    <TH>Name</TH>
    <TH>Breed</TH>
    <TH>Age</TH>
    <TH>Altered</TH>
    <TH>Declawed</TH>    
    <TH>License</TH>
    <TH>Owner</TH>
  </TR>
  <xsl:for-each select="CAT">
  <TR ALIGN="LEFT" VALIGN="TOP">
    <TD>
      <xsl:value-of select="NAME"/>
    </TD>
    <TD>
      <xsl:value-of select="BREED"/>
    </TD>
    <TD>
      <xsl:value-of select="AGE"/>
    </TD>
    <TD>
      <xsl:value-of select="ALTERED"/>
    </TD>
    <TD>
      <xsl:value-of select="DECLAWED"/>
    </TD>
    <TD>
      <xsl:value-of select="LICENSE"/>
    </TD>
    <TD>
      <xsl:value-of select="OWNER"/>
    </TD>
  </TR>
</xsl:for-each>
</TABLE>
此示例演示一种转换类型在编码时的外观，但请记住，只需用纯英语描述所需的数据。 例如，你可以转到 IT 部门，并说你需要打印过去两年特定区域的销售数据，“我需要它看起来这样。 然后，IT 部门可以编写 (或更改) 转换来执行该作业。

使所有这些更方便的是，Microsoft 和越来越多的其他供应商正在为各种工作创造转型。 将来，你很可能能够下载满足你的需求的转换，或者你可以根据自己的目的进行调整。 这意味着随着时间推移，XML 的使用成本会降低。

查看 Microsoft Office 系统中的 XML
Office 专业版提供广泛的 XML 支持。 Microsoft Office 使用基于 XML 的文件格式，例如 .docx、.xlsx 和 .pptx。 由于 XML 以文本格式而不是专有二进制格式存储数据，因此客户可以定义自己的架构，并通过更多方式使用数据，而无需支付版税。 有关新格式的详细信息，请参阅 Open XML 格式和文件扩展名。 其他优势包括：

较小的文件大小。 与早期版本的 Office 中使用的二进制格式相比，新格式使用 ZIP 和其他压缩技术将文件大小减少多达 75%。

更轻松地恢复信息，提高安全性。 XML 是可读的，因此，如果文件损坏，可以在 Microsoft 记事本或其他文本阅读器中打开该文件，并恢复至少一些信息。 此外，新文件更安全，因为它们不能包含 Visual Basic for Applications (VBA) 代码。 如果使用新格式创建模板，则任何 ActiveX 控件和 VBA 宏都驻留在文件的单独、更安全的部分中。 此外，还可以使用文档检查器等工具删除任何个人数据。 有关使用文档检查器的详细信息，请参阅 通过检查文档删除隐藏数据和个人信息一文。

到目前为止还不错，但是如果你有没有架构的 XML 数据呢？ 支持 XML 的 Office 程序有其自己的方法来帮助你处理数据。 例如，如果打开的 XML 文件尚没有架构，Excel 会推断架构。 然后，Excel 提供将此数据加载到 XML 表中的选项。 可以使用 XML 列表和表对数据进行排序、筛选或添加计算。

在 Office 中启用 XML 工具
默认情况下，不显示“开发工具”选项卡，但当你想要在 Office 中使用 XML 命令时，需要将其添加到功能区。 请参阅 显示“开发人员”选项卡。