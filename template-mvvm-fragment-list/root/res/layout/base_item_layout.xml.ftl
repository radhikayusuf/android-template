<layout xmlns:android="http://schemas.android.com/apk/res/android"
    xmlns:app="http://schemas.android.com/apk/res-auto"
    xmlns:tools="http://schemas.android.com/tools">

    <data>

        <variable
            name="mData"
            type="${packageName}.${className}Model" />

        <variable
            name="mListener"
            type="${packageName}.${className}UserActionListener" />

    </data>

    <FrameLayout
        android:layout_width="match_parent"
        android:layout_height="wrap_content"
        android:clickable="true"
        android:focusable="true"
        android:foreground="?attr/selectableItemBackground"
        android:onClick="@{() -> mListener.onClickItem(mData)}">

        <TextView
            android:layout_width="match_parent"
            android:layout_height="wrap_content"        
            android:padding="@dimen/dimen_16dp"
            android:text="@{mData.title}" />
        
        <View
            android:layout_width="match_parent"
            android:layout_height="1dp"
            android:layout_gravity="bottom"
            android:background="#EAEAEA"/>

    </FrameLayout>



</layout>