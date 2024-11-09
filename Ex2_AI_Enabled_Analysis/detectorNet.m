function out = detectorNet(in)
%#codegen
persistent net;

dlIn = dlarray(in,'CT');

if isempty(net)
    net = coder.loadDeepLearningNetwork('ex22Model.mat', 'DLSTM1');
end

dlOut = predict(net,dlIn);

out = extractdata(dlOut);

end