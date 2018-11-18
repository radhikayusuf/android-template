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
    <instantiate from="src/app_package/BaseModel.kt.ftl"
                   to="${escapeXmlAttribute(srcOut)}/${className}Model.kt" />
    <instantiate from="src/app_package/BaseAdapter.kt.ftl"
                   to="${escapeXmlAttribute(srcOut)}/${className}Adapter.kt" />


    <instantiate from="res/layout/base_layout.xml.ftl"
                   to="${escapeXmlAttribute(resOut)}/layout/${layoutName}.xml" />

   <instantiate from="res/layout/base_fragment_layout.xml.ftl"
                   to="${escapeXmlAttribute(resOut)}/layout/${fragmentLayoutName}.xml" />

   <instantiate from="res/layout/base_item_layout.xml.ftl"
                   to="${escapeXmlAttribute(resOut)}/layout/${itemLayoutName}.xml" />
 
 
    <open file="${escapeXmlAttribute(resOut)}/layout/${fragmentLayoutName}.xml"/>
    <open file="${escapeXmlAttribute(srcOut)}/${className}Fragment.kt"/>

</recipe>
