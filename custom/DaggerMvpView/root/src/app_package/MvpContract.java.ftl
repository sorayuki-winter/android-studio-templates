package ${scenesPackage};

import ${packageName}.BasePresenter;
import ${packageName}.BaseView;

public interface ${viewClass}Contract {

    interface View extends BaseView {
    }

    interface Presenter extends BasePresenter<View> {
    }
    
    //TODO: move following code to scenes module
    /*
    @FragmentScoped
    @ContributesAndroidInjector
    abstract ${fragmentClass} ${fragmentClass?uncap_first}();

    @ActivityScoped
    @Binds
    abstract ${viewClass}Contract.Presenter ${viewClass?uncap_first}Presenter(${viewClass}Presenter presenter);
    */
}
