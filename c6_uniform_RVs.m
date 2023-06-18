n = 1000;
x = rand(1, n);
subplot(2, 1, 1)
pdfplot(x)
subplot(2, 1, 2)
cdfplot(x)

% pdfplot and cdfplot are not built-in functions.
% You should build them by yourselves or download
% the published functions from MATLAB community.
% Following are two functions from MATLAB community,
% whose author link is
% https://www.mathworks.com/matlabcentral/profile/authors/869523.
% I did some modification on them to draw the desired plots.

function pdfplot(xin, nbins)
     if nargin == 1, nbins = 32; end
     xin = reshape(xin, numel(xin), 1);
     if ~isreal(xin), xin = abs(xin); end
     minXin = min(xin); maxXin = max(xin);
     if floor(nbins) ~= nbins, error('Number of bins should be integer value'); end
     if nbins < 2, error('Number of bins should be positive integer greater than 1 '); end

     if minXin == maxXin
          bar(minXin, 1);
          axis([minXin - 10, minXin + 10, 0, 1]);
     else
          step = (maxXin - minXin) / (nbins - 1);
          binc = minXin:step:maxXin;
          [N, X] = hist(xin, binc);
          bar(X, N / sum(N));
     end

     xlabel('x', 'FontWeight', 'b', 'FontSize', 12);
     ylabel('f_X(x)', 'FontWeight', 'b', 'FontSize', 12);
     title('PDF', 'FontWeight', 'b', 'FontSize', 12);
     grid on;
end

function cdfplot(X)
     tmp = sort(reshape(X, prod(size(X)), 1));
     Xplot = reshape([tmp tmp].', 2 * length(tmp), 1);
     tmp = [1:length(X)].' / length(X);
     Yplot = reshape([tmp tmp].', 2 * length(tmp), 1);
     Yplot = [0; Yplot(1:(end - 1))];
     hp = plot(Xplot, Yplot);
     ColOrd = get(gca, 'ColorOrder');
     ord = mod(length(get(gca, 'Children')), size(ColOrd, 1));
     set(hp, 'Color', ColOrd((ord == 0) + (ord > 0) * ord, :));

     if ~ishold
          xlabel('x', 'FontWeight', 'b', 'FontSize', 12);
          ylabel('F_X(x)', 'FontWeight', 'b', 'FontSize', 12);
          title('CDF', 'FontWeight', 'b', 'FontSize', 12);
          grid on;
     end

end
