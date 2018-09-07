package ${scenesPackage};

import ${packageName}.data.source.Repository;

import javax.inject.Inject;

public class ${viewClass}Presenter implements ${viewClass}Contract.Presenter {

    private Repository mRepository;
    private ${viewClass}Contract.View mView;
    private boolean isFirst = true;

    @Inject
    ${viewClass}Presenter(Repository repository) {
        mRepository = repository;
    }

    @Override
    public void takeView(${viewClass}Contract.View view) {
        mView = view;
        start();
    }

    @Override
    public void dropView() {
        mView = null;
    }
    
    public void start() {
        if (isFirst) {
            isFirst = false;
        } else {
            return;
        }
        // TODO do first run
    }
}
