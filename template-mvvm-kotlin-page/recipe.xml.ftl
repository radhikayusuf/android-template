<?xml version="1.0"?>
<recipe>    
    <#include "../../activities/common/recipe_manifest.xml.ftl" />
  
 
    <instantiate from="src/app_package/BaseViewModel.kt.ftl"
                   to="${escapeXmlAttribute(srcOut)}/${className}ViewModel.kt" />
    <instantiate from="src/app_package/BaseActivity.kt.ftl"
                   to="${escapeXmlAttribute(srcOut)}/${className}Activity.kt" />
    <instantiate from="src/app_package/BaseFragment.kt.ftl"
                   to="${escapeXmlAttribute(srcOut)}/${className}Fragment.kt" />
    <instantiate from="src/app_package/BaseUserActionListener.kt.ftl"
                   to="${escapeXmlAttribute(srcOut)}/${className}UserActionListener.kt" />
    <instantiate from="src/app_package/BaseNavigator.kt.ftl"
                   to="${escapeXmlAttribute(srcOut)}/${className}Navigator.kt" />


    <instantiate from="res/layout/base_layout.xml.ftl"
                   to="${escapeXmlAttribute(resOut)}/layout/${layoutName}.xml" />

   <instantiate from="res/layout/base_fragment_layout.xml.ftl"
                   to="${escapeXmlAttribute(resOut)}/layout/${fragmentLayoutName}.xml" />
 
 
    <open file="${srcOut}/${className}Activity.kt"/>
    <open file="${escapeXmlAttribute(srcOut)}/${className}Fragment.kt"/>

</recipe>
