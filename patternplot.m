function patternplot(angle, value, titletxt)
    polarplot(angle, value)
    ax = gca;
    ax.ThetaDir = 'clockwise';
    ax.ThetaZeroLocation = 'top';
    rlim([0,1])
    title(titletxt)
end