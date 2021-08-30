classdef TestParametersExample < matlab.unittest.TestCase
   
	
    properties (TestParameter)
        input = num2cell(1:12);
        
    end
    
    properties 
        output = 2:2:24;
    end
    
    methods (Test)
        function testdouble(testCase,input)
            
            val = timestwo(input);
            testCase.verifyEqual(testCase.output(input), val)
        end
    end
    
end