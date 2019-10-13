function out = smallest_multiple(n)

% The function returns a uint64, the smallest positive number that is evenly
% divisible by all of the numbers from 1 to n where n is a positive integer
% scalar. If the result would be greater than what can be represented as a
% uint64, the function returns 0. For example, 2520 is the smallest number
% that can be divided by each of the numbers from 1 to 10 without any remainder.

% Example run:
% >> out=smallest_multiple(10)
% out =
%   uint64
%    2520

result=uint64(1);
for i=1:n
    result=lcm(result,uint64(i));
end
if result>=intmax('uint64')
    out=uint64(0);
else
    out=result;
end
end