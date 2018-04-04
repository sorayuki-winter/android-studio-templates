package ${scenesPackage};

import ${packageName}.BasePresenter;
import ${packageName}.BaseView;

public interface ${scenesClass}Contract {

    interface View extends BaseView<Presenter> {
    }

    interface Presenter extends BasePresenter<View> {
    }
}
