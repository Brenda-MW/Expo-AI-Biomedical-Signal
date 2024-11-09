function out = denoiseSignal(input,denMthd)
%#codegen
    out = wdenoise(input,'DenoisingMethod',denMthd);
end
