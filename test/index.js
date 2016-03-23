// START THE SERVER BEFORE DOING THE TESTS!

var supertest = require("supertest");
var chai = require("chai");
var should = chai.should();
var expect = chai.expect;

// This agent refers to PORT where program is runninng.

var server = supertest.agent("http://localhost:3000");

// UNIT test begin

describe("test index routes", function () {

    // #1 should return home page

    it("should return home page", function (done) {

        // calling home page api
        server
        .get("/")
        .expect("Content-type", /text\/html/)
        .expect(200) // THis is HTTP response
        .end(function (err, res) {
            res.status.should.equal(200);
            res.text.should.have.string("Express");
            done();
        });
    });

    it("should return the mc page", function (done) {

        // calling home page api
        server
        .get("/mc")
        .expect("Content-type", /text\/html/)
        .expect(200) // THis is HTTP response
        .end(function (err, res) {
            res.status.should.equal(200);
            res.text.should.have.string("Multiple Choices");
            done();
        });
    });

    it("should return 404 on random requests", function (done) {
        server
        .get("/random")
        .expect(404)
        .end(function (err, res) {
            res.status.should.equal(404);
            done();
        });
    });

});