<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:output method="html" encoding="UTF-8" indent="yes"/>
<xsl:template match="/rss/channel">
<html lang="en">
<head>
<meta charset="utf-8"/>
<meta name="viewport" content="width=device-width,initial-scale=1"/>
<title>RSS - <xsl:value-of select="title"/></title>
<link rel="stylesheet" href="assets/style.css"/>
<style>
  .rss-info{background:var(--bg-elev);border:1px solid var(--border);
    border-radius:var(--radius);padding:24px;margin:24px 0;}
  .rss-info code{background:var(--card);padding:2px 8px;border-radius:6px;
    color:var(--accent-hover);font-size:13px;display:inline-block;
    word-break:break-all;max-width:100%;}
  .rss-info ol{padding-left:20px;color:var(--text-dim);line-height:1.9}
</style>
</head>
<body>
<nav class="nav"><div class="nav-inner">
<a class="nav-brand" href="index.html"><span class="logo">B</span>
<span>Bytewise<span class="accent">.</span></span></a>
<div class="nav-links">
<a href="index.html#latest">Latest</a>
<a href="feed.xml">RSS</a>
</div></div></nav>
<div class="container">
<section class="page-header">
<div class="kicker">RSS Feed</div>
<h1 style="font-size:clamp(28px,4vw,40px);font-weight:900;letter-spacing:-0.02em">
<xsl:value-of select="title"/>
</h1>
<p class="tagline" style="color:var(--text-dim);font-size:17px;margin-top:8px">
<xsl:value-of select="description"/>
</p>
</section>
<div class="rss-info">
<p style="margin-bottom:12px;color:var(--text)"><strong>Subscribe to this feed in your favorite RSS reader:</strong></p>
<ol>
<li>Copy this URL: <code><xsl:value-of select="link"/>feed.xml</code></li>
<li>Paste it into Feedly, Inoreader, NewsBlur, or any RSS app</li>
<li>You'll get every new brief automatically</li>
</ol>
</div>
<h2 class="section-title">Latest items</h2>
<div class="post-list">
<xsl:for-each select="item">
<article class="post-card no-thumb"><div class="body">
<div class="meta"><xsl:value-of select="substring(pubDate, 1, 10)"/></div>
<h2><a><xsl:attribute name="href"><xsl:value-of select="link"/></xsl:attribute>
<xsl:value-of select="title"/></a></h2>
<p class="preview"><xsl:value-of select="description"/></p>
</div></article>
</xsl:for-each>
</div>
<footer><p>If you're seeing this in a browser, the RSS feed is working - your reader just hasn't subscribed yet.</p></footer>
</div>
</body>
</html>
</xsl:template>
</xsl:stylesheet>