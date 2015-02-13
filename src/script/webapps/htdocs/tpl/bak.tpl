<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <title>Scaffolding · Twitter Bootstrap</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">

    <!-- Le styles -->
    <link href="assets/css/bootstrap.css" rel="stylesheet">
    <link href="assets/css/bootstrap-responsive.css" rel="stylesheet">
    <link href="assets/css/docs.css" rel="stylesheet">
    <link href="assets/js/google-code-prettify/prettify.css" rel="stylesheet">

    <!-- Le HTML5 shim, for IE6-8 support of HTML5 elements -->
    <!--[if lt IE 9]>
      <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
    <![endif]-->

    <!-- Le fav and touch icons -->
    <link rel="shortcut icon" href="assets/ico/favicon.ico">
    <link rel="apple-touch-icon-precomposed" sizes="144x144" href="assets/ico/apple-touch-icon-144-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="114x114" href="assets/ico/apple-touch-icon-114-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="72x72" href="assets/ico/apple-touch-icon-72-precomposed.png">
    <link rel="apple-touch-icon-precomposed" href="assets/ico/apple-touch-icon-57-precomposed.png">
  </head>

  <body data-spy="scroll" data-target=".subnav" data-offset="50">


  <!-- Navbar
    ================================================== -->
    <div class="navbar navbar-fixed-top">
      <div class="navbar-inner">
        <div class="container">
          <a class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse">
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </a>
          <a class="brand" href="./index.html">Bootstrap</a>
          <div class="nav-collapse collapse">
            <ul class="nav">
              <li class="">
                <a href="./index.html">Overview</a>
              </li>
              <li class="active">
                <a href="./scaffolding.html">Scaffolding</a>
              </li>
              <li class="">
                <a href="./base-css.html">Base CSS</a>
              </li>
              <li class="">
                <a href="./components.html">Components</a>
              </li>
              <li class="">
                <a href="./javascript.html">Javascript plugins</a>
              </li>
              <li class="">
                <a href="./less.html">Using LESS</a>
              </li>
              <li class="divider-vertical"></li>
              <li class="">
                <a href="./download.html">Customize</a>
              </li>
              <li class="">
                <a href="./examples.html">Examples</a>
              </li>
            </ul>
          </div>
        </div>
      </div>
    </div>

    <div class="container">

      <!-- Masthead
      ================================================== -->
      <header class="jumbotron subhead" id="overview">
        <h1>Scaffolding</h1>
        <p class="lead">Bootstrap is built on a responsive 12-column grid. We've also included fixed- and fluid-width layouts based on that system.</p>
        <div class="subnav">
          <ul class="nav nav-pills">
            <li><a href="#global">Global styles</a></li>
            <li><a href="#gridSystem">Grid system</a></li>
            <li><a href="#fluidGridSystem">Fluid grid system</a></li>
            <li><a href="#gridCustomization">Customizing</a></li>
            <li><a href="#layouts">Layouts</a></li>
            <li><a href="#responsive">Responsive design</a></li>
          </ul>
        </div>
      </header>




<!-- Global Bootstrap settings
================================================== -->
<section id="global">
  <div class="page-header">
    <h1>Global styles <small>for CSS reset, typography, and links</small></h1>
  </div>
  <div class="row">
    <div class="span4">
      <h2>Requires HTML5 doctype</h2>
      <p>Bootstrap makes use of HTML elements and CSS properties that require the use of the HTML5 doctype. Be sure to include it at the beginning of every Bootstrapped page in your project.</p>
<pre class="prettyprint linenums">
&lt;!DOCTYPE html&gt;
&lt;html lang="en"&gt;
  ...
&lt;/html&gt;
</pre>
    </div><!-- /.span -->
    <div class="span4">
      <h2>Typography and links</h2>
      <p>Within the <strong>scaffolding.less</strong> file, we set basic global display, typography, and link styles. Specifically, we:</p>
      <ul>
        <li>Remove margin on the body</li>
        <li>Set <code>background-color: white;</code> on the <code>body</code></li>
        <li>Use the <code>@baseFontFamily</code>, <code>@baseFontSize</code>, and <code>@baseLineHeight</code> attributes as our typographyic base</li>
        <li>Set the global link color via <code>@linkColor</code> and apply link underlines only on <code>:hover</code></li>
      </ul>
    </div><!-- /.span -->
    <div class="span4">
      <h2>Reset via Normalize</h2>
      <p>As of Bootstrap 2, the traditional CSS reset has evolved to make use of elements from <a href="http://necolas.github.com/normalize.css/" target="_blank">Normalize.css</a>, a project by <a href="http://twitter.com/necolas" target="_blank">Nicolas Gallagher</a> that also powers the <a href="http://html5boilerplate.com" target="_blank">HTML5 Boilerplate</a>.</p>
      <p>The new reset can still be found in <strong>reset.less</strong>, but with many elements removed for brevity and accuracy.</p>
    </div><!-- /.span -->
  </div><!-- /.row -->
</section>




<!-- Grid system
================================================== -->
<section id="gridSystem">
  <div class="page-header">
    <h1>Default grid system <small>12 columns with a responsive twist</small></h1>
  </div>

  <div class="row show-grid">
    <div class="span1">1</div>
    <div class="span1">1</div>
    <div class="span1">1</div>
    <div class="span1">1</div>
    <div class="span1">1</div>
    <div class="span1">1</div>
    <div class="span1">1</div>
    <div class="span1">1</div>
    <div class="span1">1</div>
    <div class="span1">1</div>
    <div class="span1">1</div>
    <div class="span1">1</div>
  </div>
  <div class="row show-grid">
    <div class="span4">4</div>
    <div class="span4">4</div>
    <div class="span4">4</div>
  </div>
  <div class="row show-grid">
    <div class="span4">4</div>
    <div class="span8">8</div>
  </div>
  <div class="row show-grid">
    <div class="span6">6</div>
    <div class="span6">6</div>
  </div>
  <div class="row show-grid">
    <div class="span12">12</div>
  </div>
  <div class="row">
    <div class="span4">
      <p>The default grid system provided as part of Bootstrap is a <strong>940px-wide, 12-column grid</strong>.</p>
      <p>It also has four responsive variations for various devices and resolutions: phone, tablet portrait, tablet landscape and small desktops, and large widescreen desktops.</p>
    </div><!-- /.span -->
    <div class="span4">
<pre class="prettyprint linenums">
&lt;div class="row"&gt;
  &lt;div class="span4"&gt;...&lt;/div&gt;
  &lt;div class="span8"&gt;...&lt;/div&gt;
&lt;/div&gt;
</pre>
    </div><!-- /.span -->
    <div class="span4">
      <p>As shown here, a basic layout can be created with two "columns", each spanning a number of the 12 foundational columns we defined as part of our grid system.</p>
    </div><!-- /.span -->
  </div><!-- /.row -->

  <br>

  <h2>Offsetting columns</h2>
  <div class="row show-grid">
    <div class="span4">4</div>
    <div class="span4 offset4">4 offset 4</div>
  </div><!-- /row -->
  <div class="row show-grid">
    <div class="span3 offset3">3 offset 3</div>
    <div class="span3 offset3">3 offset 3</div>
  </div><!-- /row -->
  <div class="row show-grid">
    <div class="span8 offset4">8 offset 4</div>
  </div><!-- /row -->
<pre class="prettyprint linenums">
&lt;div class="row"&gt;
  &lt;div class="span4"&gt;...&lt;/div&gt;
  &lt;div class="span4 offset4"&gt;...&lt;/div&gt;
&lt;/div&gt;
</pre>

  <br>

  <h2>Nesting columns</h2>
  <div class="row">
    <div class="span6">
      <p>With the static (non-fluid) grid system in Bootstrap, nesting is easy. To nest your content, just add a new <code>.row</code> and set of <code>.span*</code> columns within an existing <code>.span*</code> column.</p>
      <h3>Example</h3>
      <p>Nested rows should include a set of columns that add up to the number of columns of it's parent. For example, two nested <code>.span3</code> columns should be placed within a <code>.span6</code>.</p>
      <div class="row show-grid">
        <div class="span6">
          Level 1 of column
          <div class="row show-grid">
            <div class="span3">
              Level 2
            </div>
            <div class="span3">
              Level 2
            </div>
          </div>
        </div>
      </div>
    </div><!-- /.span -->
    <div class="span6">
<pre class="prettyprint linenums">
&lt;div class="row"&gt;
  &lt;div class="span12"&gt;
    Level 1 of column
    &lt;div class="row"&gt;
      &lt;div class="span6"&gt;Level 2&lt;/div&gt;
      &lt;div class="span6"&gt;Level 2&lt;/div&gt;
    &lt;/div&gt;
  &lt;/div&gt;
&lt;/div&gt;
</pre>
    </div><!-- /.span -->
  </div><!-- /.row -->
</section>



<!-- Fluid grid system
================================================== -->
<section id="fluidGridSystem">
  <div class="page-header">
    <h1>Fluid grid system <small>12 responsive, percent-based columns</small></h1>
  </div>

  <h2>Fluid columns</h2>
  <div class="row-fluid show-grid">
    <div class="span1">1</div>
    <div class="span1">1</div>
    <div class="span1">1</div>
    <div class="span1">1</div>
    <div class="span1">1</div>
    <div class="span1">1</div>
    <div class="span1">1</div>
    <div class="span1">1</div>
    <div class="span1">1</div>
    <div class="span1">1</div>
    <div class="span1">1</div>
    <div class="span1">1</div>
  </div>
  <div class="row-fluid show-grid">
    <div class="span4">4</div>
    <div class="span4">4</div>
    <div class="span4">4</div>
  </div>
  <div class="row-fluid show-grid">
    <div class="span4">4</div>
    <div class="span8">8</div>
  </div>
  <div class="row-fluid show-grid">
    <div class="span6">6</div>
    <div class="span6">6</div>
  </div>
  <div class="row-fluid show-grid">
    <div class="span12">12</div>
  </div>

  <div class="row">
    <div class="span4">
      <h3>Percents, not pixels</h3>
      <p>The fluid grid system uses percents for column widths instead of fixed pixels. It also has the same responsive variations as our fixed grid system, ensuring proper proportions for key screen resolutions and devices.</p>
    </div><!-- /.span -->
    <div class="span4">
      <h3>Fluid rows</h3>
      <p>Make any row fluid simply by changing <code>.row</code> to <code>.row-fluid</code>. The columns stay the exact same, making it super straightforward to flip between fixed and fluid layouts.</p>
    </div><!-- /.span -->
    <div class="span4">
      <h3>Markup</h3>
<pre class="prettyprint linenums">
&lt;div class="row-fluid"&gt;
  &lt;div class="span4"&gt;...&lt;/div&gt;
  &lt;div class="span8"&gt;...&lt;/div&gt;
&lt;/div&gt;
</pre>
    </div><!-- /.span -->
  </div><!-- /.row -->

  <h2>Fluid nesting</h2>
  <div class="row">
    <div class="span6">
      <p>Nesting with fluid grids is a bit different: the number of nested columns doesn't need to match the parent. Instead, your columns are reset at each level because each row takes up 100% of the parent column.</p>
      <div class="row-fluid show-grid">
        <div class="span12">
          Fluid 12
          <div class="row-fluid show-grid">
            <div class="span6">
              Fluid 6
            </div>
            <div class="span6">
              Fluid 6
            </div>
          </div>
        </div>
      </div>
    </div><!-- /.span -->
    <div class="span6">
<pre class="prettyprint linenums">
&lt;div class="row-fluid"&gt;
  &lt;div class="span12"&gt;
    Level 1 of column
    &lt;div class="row-fluid"&gt;
      &lt;div class="span6"&gt;Level 2&lt;/div&gt;
      &lt;div class="span6"&gt;Level 2&lt;/div&gt;
    &lt;/div&gt;
  &lt;/div&gt;
&lt;/div&gt;
</pre>
    </div><!-- /.span -->
  </div><!-- /.row -->

</section>



<!-- Customizaton
================================================== -->
<section id="gridCustomization">
  <div class="page-header">
    <h1>Grid customization</h1>
  </div>
  <table class="table table-bordered table-striped">
    <thead>
      <tr>
        <th>Variable</th>
        <th>Default value</th>
        <th>Description</th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td><code>@gridColumns</code></td>
        <td>12</td>
        <td>Number of columns</td>
      </tr>
      <tr>
        <td><code>@gridColumnWidth</code></td>
        <td>60px</td>
        <td>Width of each column</td>
      </tr>
      <tr>
        <td><code>@gridGutterWidth</code></td>
        <td>20px</td>
        <td>Negative space between columns</td>
      </tr>
    </tbody>
  </table>
  <div class="row">
    <div class="span4">
      <h3>Variables in LESS</h3>
      <p>Built into Bootstrap are a handful of variables for customizing the default 940px grid system, documented above. All variables for the grid are stored in variables.less.</p>
    </div><!-- /.span -->
    <div class="span4">
      <h3>How to customize</h3>
      <p>Modifying the grid means changing the three <code>@grid*</code> variables and recompiling Bootstrap. Change the grid variables in variables.less and use one of the <a href="less.html#compiling">four ways documented to recompile</a>. If you're adding more columns, be sure to add the CSS for those in grid.less.</p>
    </div><!-- /.span -->
    <div class="span4">
      <h3>Staying responsive</h3>
      <p>Customization of the grid only works at the default level, the 940px grid. To maintain the responsive aspects of Bootstrap, you'll also have to customize the grids in responsive.less.</p>
    </div><!-- /.span -->
  </div><!-- /.row -->

</section>



<!-- Layouts (Default and fluid)
================================================== -->
<section id="layouts">
  <div class="page-header">
    <h1>Layouts <small>Basic templates to create webpages</small></h1>
  </div>

  <div class="row">
    <div class="span6">
      <h2>Fixed layout</h2>
      <p>The default and simple 940px-wide, centered layout for just about any website or page provided by a single <code>&lt;div class="container"&gt;</code>.</p>
      <div class="mini-layout">
        <div class="mini-layout-body"></div>
      </div>
<pre class="prettyprint linenums">
&lt;body&gt;
  &lt;div class="container"&gt;
    ...
  &lt;/div&gt;
&lt;/body&gt;
</pre>
    </div><!-- /.span -->
    <div class="span6">
      <h2>Fluid layout</h2>
      <p><code>&lt;div class="container-fluid"&gt;</code> gives flexible page structure, min- and max-widths, and a left-hand sidebar. It's great for apps and docs.</p>
      <div class="mini-layout fluid">
        <div class="mini-layout-sidebar"></div>
        <div class="mini-layout-body"></div>
      </div>
<pre class="prettyprint linenums">
&lt;div class="container-fluid"&gt;
  &lt;div class="row-fluid"&gt;
    &lt;div class="span2"&gt;
      &lt;!--Sidebar content--&gt;
    &lt;/div&gt;
    &lt;div class="span10"&gt;
      &lt;!--Body content--&gt;
    &lt;/div&gt;
  &lt;/div&gt;
&lt;/div&gt;
</pre>
    </div><!-- /.span -->
  </div><!-- /.row -->
</section>




<!-- Responsive design
================================================== -->
<section id="responsive">
  <div class="page-header">
    <h1>Responsive design <small>Media queries for various devices and resolutions</small></h1>
  </div>
  <!-- Supported devices -->
  <div class="row">
    <div class="span4">
      <p><img src="assets/img/responsive-illustrations.png" alt="Responsive devices"></p>
      <h3>What they do</h3>
      <p>Media queries allow for custom CSS based on a number of conditions&mdash;ratios, widths, display type, etc&mdash;but usually focuses around <code>min-width</code> and <code>max-width</code>.</p>
      <ul>
        <li>Modify the width of column in our grid</li>
        <li>Stack elements instead of float wherever necessary</li>
        <li>Resize headings and text to be more appropriate for devices</li>
      </ul>
      <p>Use media queries responsibly and only as a start to your mobile audiences. For larger projects, do consider dedicated code bases and not layers of media queries.</p>
    </div><!-- /.span -->
    <div class="span8">
      <h2>Supported devices</h2>
      <p>Bootstrap supports a handful of media queries in a single file to help make your projects more appropriate on different devices and screen resolutions. Here's what's included:</p>
      <table class="table table-bordered table-striped">
        <thead>
          <tr>
            <th>Label</th>
            <th>Layout width</th>
            <th>Column width</th>
            <th>Gutter width</th>
          </tr>
        </thead>
        <tbody>
          <tr>
            <td>Smartphones</td>
            <td>480px and below</td>
            <td class="muted" colspan="2">Fluid columns, no fixed widths</td>
          </tr>
          <tr>
            <td>Smartphones to tablets</td>
            <td>767px and below</td>
            <td class="muted" colspan="2">Fluid columns, no fixed widths</td>
          </tr>
          <tr>
            <td>Portrait tablets</td>
            <td>768px and above</td>
            <td>42px</td>
            <td>20px</td>
          </tr>
          <tr>
            <td>Default</td>
            <td>980px and up</td>
            <td>60px</td>
            <td>20px</td>
          </tr>
          <tr>
            <td>Large display</td>
            <td>1200px and up</td>
            <td>70px</td>
            <td>30px</td>
          </tr>
        </tbody>
      </table>

      <h3>Requires meta tag</h3>
      <p>To ensure devices display responsive pages properly, include the viewport meta tag.</p>
      <pre class="prettyprint linenums">&lt;meta name="viewport" content="width=device-width, initial-scale=1.0"&gt;</pre>
    </div><!-- /.span -->
  </div><!-- /.row -->

  <br>

  <!-- Media query code -->
  <h2>Using the media queries</h2>
  <div class="row">
    <div class="span4">
      <p>Bootstrap doesn't automatically include these media queries, but understanding and adding them is very easy and requires minimal setup. You have a few options for including the responsive features of Bootstrap:</p>
      <ol>
        <li>Use the compiled responsive version, bootstrap-responsive.css</li>
        <li>Add @import "responsive.less" and recompile Bootstrap</li>
        <li>Modify and recompile responsive.less as a separate file</li>
      </ol>
      <p><strong>Why not just include it?</strong> Truth be told, not everything needs to be responsive. Instead of encouraging developers to remove this feature, we figure it best to enable it.</p>
    </div><!-- /.span -->
    <div class="span8">
<pre class="prettyprint linenums">
  // Landscape phones and down
  @media (max-width: 480px) { ... }

  // Landscape phone to portrait tablet
  @media (max-width: 767px) { ... }

  // Portrait tablet to landscape and desktop
  @media (min-width: 768px) and (max-width: 979px) { ... }

  // Large desktop
  @media (min-width: 1200px) { ... }
</pre>
    </div><!-- /.span -->
  </div><!-- /.row -->
  <br>

  <!-- Responsive utility classes -->
  <h2>Responsive utility classes</h2>
  <div class="row">
    <div class="span4">
      <h3>What are they</h2>
      <p>For faster mobile-friendly development, use these basic utility classes for showing and hiding content by device.</p>
      <h3>When to use</h2>
      <p>Use on a limited basis and avoid creating entirely different versions of the same site. Instead, use them to complement each device's presentation.</p>
      <p>For example, you might show a <code>&lt;select&gt;</code> element for nav on mobile layouts, but not on tablets or desktops.</p>
    </div><!-- /.span -->
    <div class="span8">
      <h3>Support classes</h3>
      <p>Shown here is a table of the classes we support and their effect on a given media query layout (labeled by device). They can be found in <code>responsive.less</code>.</p>
      <table class="table table-bordered table-striped responsive-utilities">
        <thead>
          <tr>
            <th>Class</th>
            <th>Phones <small>480px and below</small></th>
            <th>Tablets <small>767px and below</small></th>
            <th>Desktops <small>768px and above</small></th>
          </tr>
        </thead>
        <tbody>
          <tr>
            <th><code>.visible-phone</code></th>
            <td class="is-visible">Visible</td>
            <td class="is-hidden">Hidden</td>
            <td class="is-hidden">Hidden</td>
          </tr>
          <tr>
            <th><code>.visible-tablet</code></th>
            <td class="is-hidden">Hidden</td>
            <td class="is-visible">Visible</td>
            <td class="is-hidden">Hidden</td>
          </tr>
          <tr>
            <th><code>.visible-desktop</code></th>
            <td class="is-hidden">Hidden</td>
            <td class="is-hidden">Hidden</td>
            <td class="is-visible">Visible</td>
          </tr>
          <tr>
            <th><code>.hidden-phone</code></th>
            <td class="is-hidden">Hidden</td>
            <td class="is-visible">Visible</td>
            <td class="is-visible">Visible</td>
          </tr>
          <tr>
            <th><code>.hidden-tablet</code></th>
            <td class="is-visible">Visible</td>
            <td class="is-hidden">Hidden</td>
            <td class="is-visible">Visible</td>
          </tr>
          <tr>
            <th><code>.hidden-desktop</code></th>
            <td class="is-visible">Visible</td>
            <td class="is-visible">Visible</td>
            <td class="is-hidden">Hidden</td>
          </tr>
        </tbody>
      </table>
      <h3>Test case</h3>
      <p>Resize your browser or load on different devices to test the above classes.</p>
      <h4>Visible on...</h4>
      <p>Green checkmarks indicate that class is visible in your current viewport.</p>
      <ul class="responsive-utilities-test">
        <li>Phone<span class="visible-phone">&#10004; Phone</span></li>
        <li>Tablet<span class="visible-tablet">&#10004; Tablet</span></li>
        <li>Desktop<span class="visible-desktop">&#10004; Desktop</span></li>
      </ul>
      <h4>Hidden on...</h4>
      <p>Here, green checkmarks indicate that class is hidden in your current viewport.</p>
      <ul class="responsive-utilities-test hidden-on">
        <li>Phone<span class="hidden-phone">&#10004; Phone</span></li>
        <li>Tablet<span class="hidden-tablet">&#10004; Tablet</span></li>
        <li>Desktop<span class="hidden-desktop">&#10004; Desktop</span></li>
      </ul>
    </div><!-- /.span -->
  </div><!-- /.row -->


  <div class="row">
    <div class="span4">
    </div><!-- /.span -->
  </div><!-- /.row -->
</section>


     <!-- Footer
      ================================================== -->
      <footer class="footer">
        <p class="pull-right"><a href="#">Back to top</a></p>
        <p>Designed and built with all the love in the world <a href="http://twitter.com/twitter" target="_blank">@twitter</a> by <a href="http://twitter.com/mdo" target="_blank">@mdo</a> and <a href="http://twitter.com/fat" target="_blank">@fat</a>.</p>
        <p>Code licensed under the <a href="http://www.apache.org/licenses/LICENSE-2.0" target="_blank">Apache License v2.0</a>. Documentation licensed under <a href="http://creativecommons.org/licenses/by/3.0/">CC BY 3.0</a>.</p>
        <p>Icons from <a href="http://glyphicons.com">Glyphicons Free</a>, licensed under <a href="http://creativecommons.org/licenses/by/3.0/">CC BY 3.0</a>.</p>
      </footer>

    </div><!-- /container -->



    <!-- Le javascript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script type="text/javascript" src="http://platform.twitter.com/widgets.js"></script>
    <script src="assets/js/jquery.js"></script>
    <script src="assets/js/google-code-prettify/prettify.js"></script>
    <script src="assets/js/bootstrap-transition.js"></script>
    <script src="assets/js/bootstrap-alert.js"></script>
    <script src="assets/js/bootstrap-modal.js"></script>
    <script src="assets/js/bootstrap-dropdown.js"></script>
    <script src="assets/js/bootstrap-scrollspy.js"></script>
    <script src="assets/js/bootstrap-tab.js"></script>
    <script src="assets/js/bootstrap-tooltip.js"></script>
    <script src="assets/js/bootstrap-popover.js"></script>
    <script src="assets/js/bootstrap-button.js"></script>
    <script src="assets/js/bootstrap-collapse.js"></script>
    <script src="assets/js/bootstrap-carousel.js"></script>
    <script src="assets/js/bootstrap-typeahead.js"></script>
    <script src="assets/js/application.js"></script>

    <!-- Analytics
    ================================================== -->
    <script>
      var _gauges = _gauges || [];
      (function() {
        var t   = document.createElement('script');
        t.type  = 'text/javascript';
        t.async = true;
        t.id    = 'gauges-tracker';
        t.setAttribute('data-site-id', '4f0dc9fef5a1f55508000013');
        t.src = '//secure.gaug.es/track.js';
        var s = document.getElementsByTagName('script')[0];
        s.parentNode.insertBefore(t, s);
      })();
    </script>

  </body>
</html>
