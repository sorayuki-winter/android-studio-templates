package ${scenesPackage};

import ${packageName}.data.source.Repository;

import javax.inject.Inject;

public class ${viewClass}Presenter implements ${viewClass}Contract.Presenter {

    private ${viewClass}Contract.View mView;

    private Repository mRepository;

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
    }
}
