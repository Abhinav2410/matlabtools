function T = textBetween(text, ld, rd)
%% Extract the text between two delimiters in a string
% Only returns the first occurence. 
%
%% Example
%
% textBetween('\input{myTexFile} % this is a tex file', '{', '}')
%
% ans =
%  myTexFile
%%

toks = tokenize(text, [ld, rd]); 
if numel(toks) < 2
    T = {};
else
    T = toks{2};
end

end