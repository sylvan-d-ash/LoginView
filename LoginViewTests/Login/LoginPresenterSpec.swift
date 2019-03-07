//
//  LoginPresenterSpec.swift
//  LoginViewTests
//
//  Created by Sylvan Ash on 07/03/2019.
//  Copyright © 2019 Sylvan Ash. All rights reserved.
//

import Quick
import Nimble
@testable import LoginView

class LoginPresenterSpec: QuickSpec {
    override func spec() {
        var sut: LoginPresenter!
        var view: LoginViewSpy!
        var router: LoginRouterSpy!
        var interactor: LoginInteractorStub!

        beforeEach {
            view = LoginViewSpy()
            router = LoginRouterSpy()
            interactor = LoginInteractorStub()
            sut = LoginPresenter(view: view, interactor: interactor, router: router)
        }

        afterEach {
            view = nil
            router = nil
            interactor = nil
            sut = nil
        }

        describe("viewDidLoad") {
            it("should do nothing when the view loads") {}
        }

        describe("login") {
            context("valid fields") {
                context("successful login") {
                    it("should redirect to next scene") {
                        // given
                        let username = "winter@in.co"
                        let password = "complex12"

                        // when
                        sut.login(with: username, and: password)

                        // then
                        expect(view.didCallShowLoading).to(equal(true))
                        expect(view.didCallHideLoading).to(equal(true))
                        expect(router.didCallGoToNextScene).to(equal(true))
                    }
                }

                context("failed login") {
                    it("should show an error message") {
                        // given
                        let username = "winter@in.co"
                        let password = "comdp"
                        let errorMessage = "Something went wrong!"
                        let errorTitle = "Login Error"
                        interactor.error = WebError(errorMessage, code: "504")

                        // when
                        sut.login(with: username, and: password)

                        // then
                        expect(view.didCallShowLoading).to(equal(true))
                        expect(view.didCallHideLoading).to(equal(true))
                        expect(view.errorMessage).to(equal(errorMessage))
                        expect(view.errorTitle).toNot(beNil())
                        expect(view.errorTitle).to(equal(errorTitle))
                    }
                }
            }
        }
    }
}
