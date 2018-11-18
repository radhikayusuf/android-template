package ${packageName};

import android.content.Context
import android.content.Intent
import android.support.v7.app.AppCompatActivity
import android.os.Bundle
import ${applicationPackage?replace('.development', '')}.R
import ${applicationPackage?replace('.development', '')}.utils.extension.replaceFragmentInActivity


class ${className}Activity : AppCompatActivity(), ${className}Navigator {

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.${layoutName})
        setupFragment()
    }

    private fun setupFragment() {
        supportFragmentManager.findFragmentById(R.id.frame_main_content)
        ${className}Fragment.newInstance().let {
            // TODO if template have an error, please reimport replaceFragmentInActivity
            replaceFragmentInActivity(it, R.id.frame_main_content)
        }
    }

    companion object {
        fun startActivity(context: Context) {
            context.startActivity(Intent(context, ${className}Activity::class.java))
        }
    }
}
