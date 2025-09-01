my $v_year = 0;
my $v_month = 0;
my $v_commit_count = 0;
my $v_hash = "";
my $v_build_date = "";

while(<STDIN>) {
    $_ =~ /koreader-linux-x86_64-v(....)\.(..)-([0-9]*)-(.*)_([0-9]{4}-[0-9]{2}-[0-9]{2})\.tar\.xz/;
    if($1 > $v_year) {
        $v_year = $1;
	$v_month = $v_commit_count = 0;
    }
    if($2 > $v_month) {
        $v_month = $2;
	$v_commit_count = 0;
    }
    if($3 > $v_commit_count) {
        $v_commit_count = $3;
	$v_hash = $4;
	$v_build_date = $5;
    }
}

print "https://ota.koreader.rocks/koreader-linux-x86_64-v".$v_year.".".$v_month."-".$v_commit_count."-".$v_hash."_".$v_build_date.".tar.xz\n";

# koreader-linux-x86_64-v2025.08-8-g73b4dd4bb_2025-08-20.tar.xz
