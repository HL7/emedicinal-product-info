<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
  xmlns:f="http://hl7.org/fhir"
  xmlns:xhtml="http://www.w3.org/1999/xhtml"
  exclude-result-prefixes="f xhtml">

<xsl:output method="html" indent="yes" encoding="UTF-8"/>
<xsl:param name="css-path" select="'epi-styles.css'"/>

<!-- ============================================================
     ROOT TEMPLATE
     ============================================================ -->
<xsl:template match="/">
  <xsl:text disable-output-escaping="yes">&lt;!DOCTYPE html&gt;
</xsl:text>
  <html>
    <xsl:attribute name="lang">
      <xsl:choose>
        <xsl:when test="f:Bundle/f:entry[1]/f:resource/f:Composition/f:language/@value">
          <xsl:value-of select="f:Bundle/f:entry[1]/f:resource/f:Composition/f:language/@value"/>
        </xsl:when>
        <xsl:when test="f:Bundle/f:language/@value">
          <xsl:value-of select="f:Bundle/f:language/@value"/>
        </xsl:when>
        <xsl:otherwise>en</xsl:otherwise>
      </xsl:choose>
    </xsl:attribute>
  <head>
    <meta charset="UTF-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <title><xsl:value-of select="f:Bundle/f:entry[1]/f:resource/f:Composition/f:title/@value"/> — ePI Viewer</title>
    <link rel="stylesheet" href="{$css-path}"/>
    <style>
      #t-d:checked  ~ .tabnav .tb[for="t-d"],
      #t-c:checked  ~ .tabnav .tb[for="t-c"],
      #t-o:checked  ~ .tabnav .tb[for="t-o"],
      #t-p:checked  ~ .tabnav .tb[for="t-p"],
      #t-cl:checked ~ .tabnav .tb[for="t-cl"] { color: var(--text); font-weight: 600; border-bottom-color: var(--accent); }
      #t-d:checked  ~ #pd,
      #t-c:checked  ~ #pc,
      #t-o:checked  ~ #po,
      #t-p:checked  ~ #pp,
      #t-cl:checked ~ #pcl { display: block; }
    </style>
  </head>
  <body>
    <xsl:apply-templates select="f:Bundle"/>
  </body>
  </html>
</xsl:template>

<!-- ============================================================
     BUNDLE (main layout)
     ============================================================ -->
<xsl:template match="f:Bundle">
  <xsl:variable name="comp" select="f:entry[1]/f:resource/f:Composition"/>

  <!-- Breadcrumb -->
  <div class="crumb">
    <span class="ig">eMedicinal Product Information IG</span>
    <span class="sep">&#8250;</span><span>ePI Viewer</span>
    <span class="badge">HL7 FHIR R5</span>
  </div>

  <!-- Hero -->
  <header class="hero">
    <h1><xsl:value-of select="$comp/f:title/@value"/></h1>
    <xsl:if test="$comp/f:text/xhtml:div">
      <p class="sub"><xsl:value-of select="$comp/f:text/xhtml:div"/></p>
    </xsl:if>
    <div class="chips">
      <xsl:if test="$comp/f:status/@value">
        <span class="chip ch-g">&#9679; <xsl:value-of select="$comp/f:status/@value"/></span>
      </xsl:if>
      <xsl:if test="$comp/f:version/@value">
        <span class="chip ch-gr">Version <xsl:value-of select="$comp/f:version/@value"/></span>
      </xsl:if>
      <xsl:if test="$comp/f:language/@value">
        <span class="chip ch-gr"><xsl:value-of select="$comp/f:language/@value"/></span>
      </xsl:if>
      <xsl:if test="$comp/f:type/f:coding/f:display/@value">
        <span class="chip ch-b"><xsl:value-of select="$comp/f:type/f:coding/f:display/@value"/></span>
      </xsl:if>
    </div>
  </header>

  <!-- Tab radios -->
  <input type="radio" name="tabs" id="t-d" class="trd" checked="checked"/>
  <input type="radio" name="tabs" id="t-c" class="trd"/>
  <input type="radio" name="tabs" id="t-o" class="trd"/>
  <input type="radio" name="tabs" id="t-p" class="trd"/>
  <input type="radio" name="tabs" id="t-cl" class="trd"/>

  <!-- Tab nav -->
  <nav class="tabnav">
    <div class="tabnav-inner">
      <label class="tb" for="t-d">Document</label>
      <label class="tb" for="t-c">Composition</label>
      <xsl:if test="f:entry/f:resource/f:Organization">
        <label class="tb" for="t-o">Organization</label>
      </xsl:if>
      <xsl:if test="f:entry/f:resource/f:MedicinalProductDefinition">
        <label class="tb" for="t-p">Product Details</label>
      </xsl:if>
      <xsl:if test="f:entry/f:resource/f:ClinicalUseDefinition or f:entry/f:resource/f:MedicationKnowledge">
        <label class="tb" for="t-cl">Clinical Details</label>
      </xsl:if>
    </div>
  </nav>

  <!-- ===== DOCUMENT TAB ===== -->
  <div id="pd" class="panel">
    <xsl:call-template name="document-panel">
      <xsl:with-param name="comp" select="$comp"/>
    </xsl:call-template>
  </div>

  <!-- ===== COMPOSITION TAB ===== -->
  <div id="pc" class="panel">
    <xsl:apply-templates select="$comp/f:section" mode="narrative">
      <xsl:with-param name="depth" select="1"/>
    </xsl:apply-templates>
  </div>

  <!-- ===== ORGANIZATION TAB ===== -->
  <div id="po" class="panel">
    <div class="og">
      <xsl:for-each select="f:entry/f:resource/f:Organization">
        <xsl:call-template name="org-card"/>
      </xsl:for-each>
    </div>
  </div>

  <!-- ===== PRODUCT DETAILS TAB ===== -->
  <div id="pp" class="panel">
    <xsl:call-template name="product-panel"/>
  </div>

  <!-- ===== CLINICAL DETAILS TAB ===== -->
  <div id="pcl" class="panel">
    <xsl:call-template name="clinical-panel"/>
  </div>
</xsl:template>

<!-- ============================================================
     DOCUMENT PANEL
     ============================================================ -->
<xsl:template name="document-panel">
  <xsl:param name="comp"/>

  <!-- Bundle metadata -->
  <div class="sc ab">
    <div class="sc-lbl">Bundle Metadata</div>
    <div class="sc-body">
      <div class="dg dg4" style="margin-bottom:12px">
        <div class="di"><label>Resource ID</label><div class="v vm"><xsl:value-of select="f:id/@value"/></div></div>
        <div class="di"><label>Type</label><div class="v"><xsl:value-of select="f:type/@value"/></div></div>
        <div class="di"><label>Version</label><div class="v"><xsl:value-of select="f:meta/f:versionId/@value"/></div></div>
        <div class="di"><label>Timestamp</label><div class="v"><xsl:value-of select="substring(f:timestamp/@value,1,10)"/></div></div>
      </div>
      <div class="dg dg4">
        <xsl:if test="$comp/f:language/@value">
          <div class="di"><label>Language</label><div class="v"><xsl:value-of select="$comp/f:language/@value"/></div></div>
        </xsl:if>
        <xsl:if test="$comp/f:author/f:display/@value">
          <div class="di"><label>Author (MAH)</label><div class="v"><xsl:value-of select="$comp/f:author/f:display/@value"/></div></div>
        </xsl:if>
        <xsl:if test="$comp/f:attester/f:party/f:display/@value">
          <div class="di"><label>Attester (Regulator)</label><div class="v"><xsl:value-of select="$comp/f:attester/f:party/f:display/@value"/></div></div>
        </xsl:if>
      </div>
    </div>
  </div>

  <!-- Composition -->
  <div class="sc at">
    <div class="sc-lbl">Composition</div>
    <div class="sc-body">
      <div class="dg dg3" style="margin-bottom:12px">
        <xsl:if test="$comp/f:identifier/f:value/@value">
          <div class="di"><label>Identifier</label><div class="v vm"><xsl:value-of select="$comp/f:identifier/f:value/@value"/></div></div>
        </xsl:if>
        <div class="di"><label>Title</label><div class="v"><xsl:value-of select="$comp/f:title/@value"/></div></div>
        <xsl:if test="$comp/f:type/f:coding/f:display/@value">
          <div class="di"><label>Type</label><div class="v"><span class="chip ch-b"><xsl:value-of select="$comp/f:type/f:coding/f:display/@value"/></span></div></div>
        </xsl:if>
      </div>
      <div class="dg dg4">
        <div class="di"><label>Status</label><div class="v"><span class="chip ch-g"><xsl:value-of select="$comp/f:status/@value"/></span></div></div>
        <xsl:if test="$comp/f:version/@value">
          <div class="di"><label>Version</label><div class="v"><xsl:value-of select="$comp/f:version/@value"/></div></div>
        </xsl:if>
        <xsl:if test="$comp/f:language/@value">
          <div class="di"><label>Language</label><div class="v"><xsl:value-of select="$comp/f:language/@value"/></div></div>
        </xsl:if>
        <xsl:if test="$comp/f:date/@value">
          <div class="di"><label>Date</label><div class="v"><xsl:value-of select="substring($comp/f:date/@value,1,10)"/></div></div>
        </xsl:if>
      </div>
    </div>
  </div>

  <!-- Contained resources count -->
  <div class="sc ap">
    <div class="sc-lbl">Contained Resources</div>
    <div class="cc-row">
      <xsl:if test="f:entry/f:resource/f:Composition">
        <div class="cc"><span class="n" style="color:var(--accent)"><xsl:value-of select="count(f:entry/f:resource/f:Composition)"/></span><span class="l">Compositions</span></div>
      </xsl:if>
      <xsl:if test="f:entry/f:resource/f:Organization">
        <div class="cc"><span class="n" style="color:var(--teal)"><xsl:value-of select="count(f:entry/f:resource/f:Organization)"/></span><span class="l">Organizations</span></div>
      </xsl:if>
      <xsl:if test="f:entry/f:resource/f:MedicinalProductDefinition">
        <div class="cc"><span class="n" style="color:var(--green)"><xsl:value-of select="count(f:entry/f:resource/f:MedicinalProductDefinition)"/></span><span class="l">Medicinal Products</span></div>
      </xsl:if>
      <xsl:if test="f:entry/f:resource/f:PackagedProductDefinition">
        <div class="cc"><span class="n" style="color:var(--amber)"><xsl:value-of select="count(f:entry/f:resource/f:PackagedProductDefinition)"/></span><span class="l">Packaged Products</span></div>
      </xsl:if>
      <xsl:if test="f:entry/f:resource/f:RegulatedAuthorization">
        <div class="cc"><span class="n" style="color:var(--purple)"><xsl:value-of select="count(f:entry/f:resource/f:RegulatedAuthorization)"/></span><span class="l">Regulatory Auth.</span></div>
      </xsl:if>
      <xsl:if test="f:entry/f:resource/f:ClinicalUseDefinition">
        <div class="cc"><span class="n" style="color:var(--rose)"><xsl:value-of select="count(f:entry/f:resource/f:ClinicalUseDefinition)"/></span><span class="l">Clinical Use Defs</span></div>
      </xsl:if>
      <xsl:if test="f:entry/f:resource/f:MedicationKnowledge">
        <div class="cc"><span class="n" style="color:var(--teal)"><xsl:value-of select="count(f:entry/f:resource/f:MedicationKnowledge)"/></span><span class="l">Medication Knowledge</span></div>
      </xsl:if>
      <xsl:if test="f:entry/f:resource/f:Ingredient">
        <div class="cc"><span class="n" style="color:var(--green)"><xsl:value-of select="count(f:entry/f:resource/f:Ingredient)"/></span><span class="l">Ingredients</span></div>
      </xsl:if>
      <xsl:if test="f:entry/f:resource/f:ManufacturedItemDefinition">
        <div class="cc"><span class="n" style="color:var(--amber)"><xsl:value-of select="count(f:entry/f:resource/f:ManufacturedItemDefinition)"/></span><span class="l">Manufactured Items</span></div>
      </xsl:if>
      <xsl:if test="f:entry/f:resource/f:AdministrableProductDefinition">
        <div class="cc"><span class="n" style="color:var(--purple)"><xsl:value-of select="count(f:entry/f:resource/f:AdministrableProductDefinition)"/></span><span class="l">Admin. Products</span></div>
      </xsl:if>
      <xsl:if test="f:entry/f:resource/f:SubstanceDefinition">
        <div class="cc"><span class="n" style="color:var(--teal)"><xsl:value-of select="count(f:entry/f:resource/f:SubstanceDefinition)"/></span><span class="l">Substances</span></div>
      </xsl:if>
    </div>
  </div>

  <!-- Section listing -->
  <xsl:if test="$comp/f:section/f:section">
    <div class="sc aam">
      <div class="sc-lbl">Document Sections</div>
      <div class="sc-body">
        <div class="dg dg2" style="gap:6px;font-size:.8rem;">
          <xsl:for-each select="$comp/f:section/f:section">
            <div style="padding:5px 8px;border:1px solid var(--bd);border-radius:var(--r);">
              <xsl:value-of select="f:title/@value"/>
            </div>
          </xsl:for-each>
        </div>
      </div>
    </div>
  </xsl:if>
</xsl:template>

<!-- ============================================================
     COMPOSITION PANEL — recursive section rendering
     ============================================================ -->
<xsl:template match="f:section" mode="narrative">
  <xsl:param name="depth" select="1"/>
  <xsl:variable name="accent">
    <xsl:choose>
      <xsl:when test="$depth = 1 and (position() mod 5 = 1)"> ab</xsl:when>
      <xsl:when test="$depth = 1 and (position() mod 5 = 2)"> at</xsl:when>
      <xsl:when test="$depth = 1 and (position() mod 5 = 3)"> ap</xsl:when>
      <xsl:when test="$depth = 1 and (position() mod 5 = 4)"> ag</xsl:when>
      <xsl:when test="$depth = 1 and (position() mod 5 = 0)"> aam</xsl:when>
      <xsl:when test="$depth = 2"> ab</xsl:when>
      <xsl:otherwise></xsl:otherwise>
    </xsl:choose>
  </xsl:variable>

  <div class="ns{$accent}">
    <xsl:if test="@id">
      <xsl:attribute name="id"><xsl:value-of select="@id"/></xsl:attribute>
    </xsl:if>
    <h3><xsl:value-of select="f:title/@value"/></h3>
    <!-- Render narrative XHTML -->
    <xsl:if test="f:text/xhtml:div">
      <xsl:apply-templates select="f:text/xhtml:div/node()" mode="copy-xhtml"/>
    </xsl:if>
    <!-- Recurse into child sections -->
    <xsl:if test="f:section">
      <xsl:apply-templates select="f:section" mode="narrative">
        <xsl:with-param name="depth" select="$depth + 1"/>
      </xsl:apply-templates>
    </xsl:if>
  </div>
</xsl:template>

<!-- Copy XHTML narrative content verbatim -->
<xsl:template match="xhtml:*" mode="copy-xhtml">
  <xsl:element name="{local-name()}">
    <xsl:copy-of select="@*"/>
    <xsl:apply-templates mode="copy-xhtml"/>
  </xsl:element>
</xsl:template>
<xsl:template match="text()" mode="copy-xhtml">
  <xsl:value-of select="."/>
</xsl:template>

<!-- ============================================================
     ORGANIZATION PANEL
     ============================================================ -->
<xsl:template name="org-card">
  <div class="oc" style="border-left:3px solid var(--accent)">
    <div class="och">
      <xsl:if test="f:type/f:coding/f:display/@value">
        <div class="role" style="color:var(--accent)"><xsl:value-of select="f:type/f:coding/f:display/@value"/></div>
      </xsl:if>
      <div class="name"><xsl:value-of select="f:name/@value"/></div>
    </div>
    <div class="ocb">
      <xsl:if test="f:identifier/f:value/@value">
        <div class="or"><span class="ol">Identifier</span><span class="ov ovm"><xsl:value-of select="f:identifier/f:value/@value"/></span></div>
      </xsl:if>
      <xsl:for-each select="f:contact">
        <xsl:for-each select="f:telecom">
          <div class="or">
            <span class="ol"><xsl:value-of select="f:system/@value"/></span>
            <span class="ov"><xsl:value-of select="f:value/@value"/></span>
          </div>
        </xsl:for-each>
        <xsl:if test="f:address">
          <div class="or">
            <span class="ol">Address</span>
            <span class="ov">
              <xsl:for-each select="f:address/f:line">
                <xsl:value-of select="@value"/>
                <xsl:if test="position()!=last()">, </xsl:if>
              </xsl:for-each>
              <xsl:if test="f:address/f:city/@value">, <xsl:value-of select="f:address/f:city/@value"/></xsl:if>
              <xsl:if test="f:address/f:country/@value">, <xsl:value-of select="f:address/f:country/@value"/></xsl:if>
            </span>
          </div>
        </xsl:if>
      </xsl:for-each>
    </div>
  </div>
</xsl:template>

<!-- ============================================================
     PRODUCT DETAILS PANEL (scaffold)
     ============================================================ -->
<xsl:template name="product-panel">
  <xsl:for-each select="f:entry/f:resource/f:MedicinalProductDefinition">
    <details class="pa" open="open">
      <summary class="pah">
        <span class="pnum"><xsl:value-of select="position()"/></span>
        <span class="pname"><xsl:value-of select="f:name/f:productName/@value"/></span>
        <xsl:if test="f:status/f:coding/f:code/@value">
          <div class="pbadges"><span class="chip ch-g"><xsl:value-of select="f:status/f:coding/f:code/@value"/></span></div>
        </xsl:if>
        <span class="pchev">&#9660;</span>
      </summary>
      <div class="pc">
        <xsl:if test="f:name/f:productName/@value">
          <div class="is"><div class="isl">Product Name</div>
            <div class="isb"><div class="ifs">
              <div class="inf"><span class="il">Name</span><span class="iv"><xsl:value-of select="f:name/f:productName/@value"/></span></div>
            </div></div>
          </div>
        </xsl:if>
        <xsl:if test="f:classification/f:coding/f:code/@value">
          <div class="is"><div class="isl">Classification</div>
            <div class="isb"><div class="ifs">
              <div class="inf"><span class="il">ATC</span><span class="iv"><xsl:value-of select="f:classification/f:coding/f:code/@value"/></span></div>
            </div></div>
          </div>
        </xsl:if>
      </div>
    </details>
  </xsl:for-each>
  <xsl:if test="not(f:entry/f:resource/f:MedicinalProductDefinition)">
    <div class="type1-note"><span class="icon">&#128712;</span><span>No MedicinalProductDefinition resources are included in this ePI Bundle. Product data is referenced by identifier only (Type 1 ePI).</span></div>
  </xsl:if>
</xsl:template>

<!-- ============================================================
     CLINICAL DETAILS PANEL (scaffold)
     ============================================================ -->
<xsl:template name="clinical-panel">
  <xsl:if test="f:entry/f:resource/f:ClinicalUseDefinition">
    <div class="cls">
      <div class="clsh"><span class="clsicon">&#127919;</span><span class="clstitle">Clinical Use Definitions</span>
        <span class="clscount"><xsl:value-of select="count(f:entry/f:resource/f:ClinicalUseDefinition)"/></span>
      </div>
      <div class="clsb">
        <xsl:for-each select="f:entry/f:resource/f:ClinicalUseDefinition">
          <div class="cxrow">
            <span class="cxicon">&#8856;</span>
            <span><xsl:value-of select="f:type/@value"/>
              <xsl:if test="f:indication/f:diseaseSymptomProcedure/f:concept/f:text/@value">
                — <xsl:value-of select="f:indication/f:diseaseSymptomProcedure/f:concept/f:text/@value"/>
              </xsl:if>
              <xsl:if test="f:contraindication/f:diseaseSymptomProcedure/f:concept/f:text/@value">
                — <xsl:value-of select="f:contraindication/f:diseaseSymptomProcedure/f:concept/f:text/@value"/>
              </xsl:if>
            </span>
          </div>
        </xsl:for-each>
      </div>
    </div>
  </xsl:if>

  <xsl:if test="f:entry/f:resource/f:MedicationKnowledge">
    <div class="cls" style="border-left:3px solid var(--teal)">
      <div class="clsh"><span class="clsicon">&#128138;</span><span class="clstitle">Medication Knowledge (Dosage)</span>
        <span class="clscount"><xsl:value-of select="count(f:entry/f:resource/f:MedicationKnowledge)"/></span>
      </div>
      <div class="clsb">
        <xsl:for-each select="f:entry/f:resource/f:MedicationKnowledge">
          <div class="dose-card">
            <div class="dose-card-hdr"><span class="d-pop"><xsl:value-of select="f:name/@value"/></span></div>
            <div class="dose-body">
              <div class="dose-row"><span class="dose-label">ID</span><span class="dose-value"><xsl:value-of select="f:id/@value"/></span></div>
            </div>
          </div>
        </xsl:for-each>
      </div>
    </div>
  </xsl:if>

  <xsl:if test="not(f:entry/f:resource/f:ClinicalUseDefinition) and not(f:entry/f:resource/f:MedicationKnowledge)">
    <div class="type1-note"><span class="icon">&#128712;</span><span>No clinical data resources (ClinicalUseDefinition / MedicationKnowledge) are included in this ePI Bundle.</span></div>
  </xsl:if>
</xsl:template>

</xsl:stylesheet>
