package ${scenesPackage};

import ${packageName}.BasePresenter;
import ${packageName}.BaseView;

public interface ${scenesClass}Contract {

    interface View extends BaseView {
    }

    interface Presenter extends BasePresenter<View> {
    }
}
