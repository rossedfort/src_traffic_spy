require './test/test_helper'

module TrafficSpy
  class CreatePayloadTest < Minitest::Test
    def test_create_a_payload_with_valid_attributes
      post '/sources', {identifier: "jumpstartlab",
                        rootUrl: "http://jumpstartlab.com"
                       }

      post '/sources/jumpstartlab/data', 'payload={"url":"http://jumpstartlab.com/blog",
                                                   "requestedAt":"2013-02-16 21:38:28 -0700",
                                                   "respondedIn":37,
                                                   "referredBy":"http://jumpstartlab.com",
                                                   "requestType":"GET",
                                                   "parameters":[],
                                                   "eventName": "socialLogin",
                                                   "userAgent":"Mozilla/5.0 (Macintosh%3B Intel Mac OS X 10_8_2) AppleWebKit/537.17 (KHTML, like Gecko) Opera/9.80 (X11; Linux i686; Ubuntu/14.10) Presto/2.12.388 Version/12.16",
                                                   "resolutionWidth":"1920",
                                                   "resolutionHeight":"1280",
                                                   "ip":"63.29.38.211"}'

      assert_equal 1, Payload.count
      assert_equal 200, last_response.status
      assert_equal "OK", last_response.body
    end
  end
end
