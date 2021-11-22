function make_markdowns
    % https://www.mathworks.com/matlabcentral/fileexchange/73993-livescript2markdown-matlab-s-live-scripts-to-markdown


    home = '.';
    lectures = dir(fullfile(home,'lecture_*'));
    for k = 1:length(lectures)
        lecture = lectures(k).name;
        mlxfilename = strcat(lecture, '.mlx');
        mdfilename = strcat(lecture, '.md');
        source = fullfile(home, lecture, mlxfilename);
        destination = fullfile(home, lecture, mdfilename);
        disp([source, '->', destination]);
        livescript2markdown(source, destination);
    end
    disp('done.')
end