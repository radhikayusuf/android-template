package ${packageName}


import android.support.v7.widget.RecyclerView
import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import ${applicationPackage?replace('.development', '')}.R
import ${applicationPackage?replace('.development', '')}.databinding.${itemLayoutName?replace('_', ' ')?capitalize?replace(' ','')}Binding



class ${className}Adapter(var mData: List<${className}Model>, val mViewModel: ${className}ViewModel) : RecyclerView.Adapter<${className}Adapter.${className}Item>() {


    override fun onBindViewHolder(holder: ${className}Item, position: Int) {
        holder.bind(mData[position], mViewModel)
    }

    override fun onCreateViewHolder(parent: ViewGroup, viewType: Int): ${className}Item {
        val binding = ${itemLayoutName?replace('_', ' ')?capitalize?replace(' ','')}Binding.inflate(LayoutInflater.from(parent.context), parent, false)
        return ${className}Item(binding)
    }

    override fun getItemCount(): Int {
        return mData.size
    }


    fun replaceData(data: List<${className}Model>) {
        mData = data
        notifyDataSetChanged()
    }



    class ${className}Item(val mBinding: ${itemLayoutName?replace('_', ' ')?capitalize?replace(' ','')}Binding) : RecyclerView.ViewHolder(mBinding.root) {

        fun bind(data: ${className}Model, viewModel: ${className}ViewModel) {
            mBinding.mData = data
            mBinding.mListener = object : ${className}UserActionListener {
                
                override fun onClickItem(data: ${className}Model){
                    viewModel.eventClickItem.value = data
                }

                override fun onRefreshPage() {
                    
                }
                
        	}
        }

    }

}