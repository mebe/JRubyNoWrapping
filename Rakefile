namespace :bug do
    TARGET = "out/production/5100"

    desc "Compile the stuff"
    task :compile do
        mkdir_p TARGET
        sh "javac -sourcepath src -d #{TARGET} src/foo/RCTest.java"
    end

    desc "Run the stuff"
    task :run => [:compile] do
        sh "export CLASSPATH=#{TARGET} && jruby src/foo/test.rb"
    end
    
end

task :default => "bug:run"