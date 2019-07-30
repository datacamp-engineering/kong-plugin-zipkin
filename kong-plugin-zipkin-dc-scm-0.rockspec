package = "kong-plugin-zipkin-dc"
version = "scm-0"

source = {
	url = "git+https://github.com/kong/kong-plugin-zipkin.git";
}

description = {
	summary = "This plugin allows Kong to propagate Zipkin headers and report to a Zipkin server";
	homepage = "https://github.com/kong/kong-plugin-zipkin";
	license = "Apache 2.0";
}

dependencies = {
	"lua >= 5.1";
	"lua-cjson";
	"lua-resty-http >= 0.11";
	"kong >= 0.15";
	"opentracing >= 0.0.2";
}

build = {
	type = "builtin";
	modules = {
		["kong.plugins.zipkin-dc.codec"] = "kong/plugins/zipkin/codec.lua";
		["kong.plugins.zipkin-dc.handler"] = "kong/plugins/zipkin/handler.lua";
		["kong.plugins.zipkin-dc.opentracing"] = "kong/plugins/zipkin/opentracing.lua";
		["kong.plugins.zipkin-dc.random_sampler"] = "kong/plugins/zipkin/random_sampler.lua";
		["kong.plugins.zipkin-dc.reporter"] = "kong/plugins/zipkin/reporter.lua";
		["kong.plugins.zipkin-dc.schema"] = "kong/plugins/zipkin/schema.lua";
	};
}
