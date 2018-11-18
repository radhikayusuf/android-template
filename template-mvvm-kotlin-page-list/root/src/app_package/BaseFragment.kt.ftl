package ${packageName}


import android.os.Bundle
import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import android.support.v7.widget.LinearLayoutManager
import android.arch.lifecycle.Observer
import ${applicationPackage?replace('.development', '')}.utils.chocohelper.ChocoBinding
import ${applicationPackage?replace('.development', '')}.utils.chocohelper.ChocoViewModel
import ${applicationPackage?replace('.development', '')}.utils.chocohelper.ChocoChips
import ${applicationPackage?replace('.development', '')}.utils.base.BaseFragment
import ${applicationPackage?replace('.development', '')}.R
import ${applicationPackage?replace('.development', '')}.databinding.${fragmentLayoutName?replace('_', ' ')?capitalize?replace(' ','')}Binding


class ${className}Fragment : BaseFragment<${className}ViewModel>(), ${className}UserActionListener {    

	@ChocoBinding(R.layout.${fragmentLayoutName})
	lateinit var mViewDataBinding: ${fragmentLayoutName?replace('_', ' ')?capitalize?replace(' ','')}Binding

	@ChocoViewModel
	lateinit var mViewModel: ${className}ViewModel

    override fun onCreateView(inflater: LayoutInflater, container: ViewGroup?,
                              savedInstanceState: Bundle?): View {
        ChocoChips.inject<${fragmentLayoutName?replace('_', ' ')?capitalize?replace(' ','')}Binding, ${className}ViewModel, ${className}UserActionListener>(this)
        return mViewDataBinding.root
    }

	override fun setContentData() {
        mViewDataBinding.recycler${className}.adapter = ${className}Adapter(mViewModel.b${className}List, mViewModel)
        mViewDataBinding.recycler${className}.layoutManager = LinearLayoutManager(context)
    }

    override fun onCreateObserver(viewModel: ${className}ViewModel) {
        viewModel.apply{
            eventClickItem.observe(this@${className}Fragment, Observer {
                if (it != null) {
                    onClickItem(it)
                }
            })
        }
    }

    override fun onClickItem(data: ${className}Model){
		mViewModel.showMessage.value = data.title
    }

    override fun onRefreshPage() {
        //TODO do refresh page        
    }

    override fun setMessageType(): String {
        return MESSAGE_TYPE_SNACK_CUSTOM
    }

    override fun onDestroyObserver(viewModel: ${className}ViewModel) {
        viewModel.apply{
            eventClickItem.removeObservers(this@${className}Fragment)
        }
    }


    companion object {
        fun newInstance() = ${className}Fragment().apply {

        }

    }

}