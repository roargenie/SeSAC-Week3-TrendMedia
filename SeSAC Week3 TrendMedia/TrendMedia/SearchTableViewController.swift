//
//  SearchTableViewController.swift
//  SeSAC Week3 TrendMedia
//
//  Created by 이명진 on 2022/07/19.
//

import UIKit

class SearchTableViewController: UITableViewController, UISearchControllerDelegate {
    
    var movieList: [Movie] = [
        Movie.init(movieName: "7번방의 선물", movieImage: UIImage(named: "7번방의선물"), description: "최악의 흉악범들이 모인 교도소 7번방에 이상한 놈이 들어왔다! 그는 바로 6살 지능의 딸바보 '용구'! 평생 죄만 짓고 살아온 7번방 패밀리들에게 떨어진 미션은 바로 '용구' 딸 '예승'이를 외부인 절대 출입금지인 교도소에 반.입.하.는.것! 2013년 새해, 웃음과 감동 가득한 사상초유의 합동작전이 시작된다! ", releaseDate: "2013.01.23 | 한국"),
        Movie.init(movieName: "겨울왕국2", movieImage: UIImage(named: "겨울왕국2"), description: "어느 날 부턴가 의문의 목소리가 엘사를 부르고, 평화로운 아렌델 왕국을 위협한다. 트롤은 모든 것은 과거에서 시작되었음을 알려주며 엘사의 힘의 비밀과 진실을 찾아 떠나야한다고 조언한다. 위험에 빠진 아렌델 왕국을 구해야만 하는 엘사와 안나는 숨겨진 과거의 진실을 찾아 크리스토프, 올라프 그리고 스벤과 함께 위험천만한 놀라운 모험을 떠나게 된다. 자신의 힘을 두려워했던 엘사는 이제 이 모험을 헤쳐나가기에 자신의 힘이 충분하다고 믿어야만 하는데… 두려움을 깨고 새로운 운명을 만나다!", releaseDate: "2019.11.21 | 미국"),
        Movie.init(movieName: "광해", movieImage: UIImage(named: "광해"), description: "왕위를 둘러싼 권력 다툼과 붕당정치로 혼란이 극에 달한 광해군 8년. 자신의 목숨을 노리는 자들에 대한 분노와 두려움으로 점점 난폭해져 가던 왕 ‘광해’는 도승지 ‘허균’에게 자신을 대신하여 위협에 노출될 대역을 찾을 것을 지시한다. 이에 허균은 기방의 취객들 사이에 걸쭉한 만담으로 인기를 끌던 하선을 발견한다. 왕과 똑같은 외모는 물론 타고난 재주와 말솜씨로 왕의 흉내도 완벽하게 내는 하선. 영문도 모른 채 궁에 끌려간 하선은 광해군이 자리를 비운 하룻밤 가슴 조이며 왕의 대역을 하게 된다. 왕이 되어선 안 되는 남자, 조선의 왕이 되다! 그러던 어느 날 광해군이 갑자기 의식을 잃고 쓰러지는 엄청난 사건이 발생하고, 허균은 광해군이 치료를 받는 동안 하선에게 광해군을 대신하여 왕의 대역을 할 것을 명한다. 저잣거리의 한낱 만담꾼에서 하루아침에 조선의 왕이 되어버린 천민 하선. 허균의 지시 하에 말투부터 걸음걸이, 국정을 다스리는 법까지, 함부로 입을 놀려서도 들켜서도 안 되는 위험천만한 왕노릇을 시작한다. 하지만 예민하고 난폭했던 광해와는 달리 따뜻함과 인간미가 느껴지는 달라진 왕의 모습에 궁정이 조금씩 술렁이고, 점점 왕의 대역이 아닌 자신의 목소리를 내기 시작하는 하선의 모습에 허균도 당황하기 시작하는데...", releaseDate: "2012.09.13 | 한국"),
        Movie.init(movieName: "괴물", movieImage: UIImage(named: "괴물"), description: "햇살 가득한 평화로운 한강 둔치 아버지(변희봉)가 운영하는 한강 매점, 늘어지게 낮잠 자던 강두(송강호)는 잠결에 들리는 ‘아빠’라는 소리에 벌떡 일어난다. 올해 중학생이 된 딸 현서(고아성)가 잔뜩 화가 나있다. 꺼내놓기도 창피한 오래된 핸드폰과, 학부모 참관 수업에 술 냄새 풍기며 온 삼촌(박해일)때문이다. 강두는 고민 끝에 비밀리에 모아 온 동전이 가득 담긴 컵라면 그릇을 꺼내 보인다. 그러나 현서는 시큰둥할 뿐, 막 시작된 고모(배두나)의 전국체전 양궁경기에 몰두해 버린다. 그곳에서 괴물이 나타났다. 한강 둔치로 오징어 배달을 나간 강두, 우연히 웅성웅성 모여있는 사람들 속에서 특이한 광경을 목격하게 된다. 생전 보도 못한 무언가가 한강다리에 매달려 움직이는 것이다. 사람들은 마냥 신기해하며 핸드폰, 디카로 정신 없이 찍어댄다. 그러나 그것도 잠시… 정체를 알 수 없는 괴물은 둔치 위로 올라와 사람들을 거침없이 깔아뭉개고, 무차별로 물어뜯기 시작한다. 순식간에 아수라장으로 돌변하는 한강변. 강두도 뒤늦게 딸 현서를 데리고 정신 없이 도망가지만, 비명을 지르며 흩어지는 사람들 속에서, 꼭 잡았던 현서의 손을 놓치고 만다. 그 순간 괴물은 기다렸다는 듯이 현서를 낚아채 유유히 한강으로 사라진다. 어딘가에 있을 현서를 반드시 찾아야 한다. 갑작스런 괴물의 출현으로 한강은 모두 폐쇄되고, 도시 전체는 마비된다. 하루아침에 집과 생계, 그리고 가장 소중한 현서까지 모든 것을 잃게 된 강두 가족… 돈도 없고 빽도 없는 그들은 아무도 도와주지 않지만, 위험구역으로 선포된 한강 어딘가에 있을 현서를 찾아 나선다.", releaseDate: "2006.07.27 | 한국"),
        Movie.init(movieName: "국제시장", movieImage: UIImage(named: "국제시장"), description: "1950년대 한국전쟁 이후로부터 현재에 이르기까지 격변의 시대를 관통하며 살아온 우리 시대 아버지 ‘덕수’(황정민 분), 그는 하고 싶은 것도 되고 싶은 것도 많았지만 평생 단 한번도 자신을 위해 살아본 적이 없다. ‘괜찮다’ 웃어 보이고 ‘다행이다’ 눈물 훔치며 힘들었던 그때 그 시절, 오직 가족을 위해 굳세게 살아온 우리들의 아버지 이야기가 지금부터 시작된다.", releaseDate: "2014.12.17 | 한국"),
        Movie.init(movieName: "극한직업", movieImage: UIImage(named: "극한직업"), description: "불철주야 달리고 구르지만 실적은 바닥, 급기야 해체 위기를 맞는 마약반! 더 이상 물러설 곳이 없는 팀의 맏형 고반장은 국제 범죄조직의 국내 마약 밀반입 정황을 포착하고 장형사, 마형사, 영호, 재훈까지 4명의 팀원들과 함께 잠복 수사에 나선다. 마약반은 24시간 감시를 위해 범죄조직의 아지트 앞 치킨집을 인수해 위장 창업을 하게 되고, 뜻밖의 절대미각을 지닌 마형사의 숨은 재능으로 치킨집은 일약 맛집으로 입소문이 나기 시작한다. 수사는 뒷전, 치킨장사로 눈코 뜰 새 없이 바빠진 마약반에게 어느 날 절호의 기회가 찾아오는데… 범인을 잡을 것인가, 닭을 잡을 것인가!", releaseDate: "2019.01.23 | 한국"),
        Movie.init(movieName: "도둑들", movieImage: UIImage(named: "도둑들"), description: "한 팀으로 활동 중인 한국의 도둑 뽀빠이와 예니콜, 씹던껌, 잠파노. 미술관을 터는데 멋지게 성공한 이들은 뽀빠이의 과거 파트너였던 마카오박이 제안한 홍콩에서의 새로운 계획을 듣게 된다. 여기에 마카오박이 초대하지 않은 손님, 감옥에서 막 출소한 금고털이 팹시가 합류하고 5명은 각자 인생 최고의 반전을 꿈꾸며 홍콩으로 향한다. 홍콩에서 한국 도둑들을 기다리고 있는 4인조 중국도둑 첸, 앤드류, 쥴리, 조니. 최고의 전문가들이 세팅된 가운데 서로에 대한 경계를 늦추지 않는 한국과 중국의 도둑들. 팽팽히 흐르는 긴장감 속에 나타난 마카오박은 자신이 계획한 목표물을 밝힌다. 그것은 마카오 카지노에 숨겨진 희대의 다이아몬드 <태양의 눈물>. 성공을 장담할 수 없는 위험천만한 계획이지만 2천만 달러의 달콤한 제안을 거부할 수 없는 이들은 태양의 눈물을 훔치기 위한 작업에 착수한다. 그러나 진짜 의도를 알 수 없는 비밀스런 마카오박과 그런 마카오박의 뒤통수를 노리는 뽀빠이, 마카오박에게 배신당한 과거의 기억을 잊지 못하는 팹시와 팀보다 눈 앞의 현찰을 먼저 챙기는 예니콜, 그리고 한국 도둑들을 믿지 않는 첸과 중국 도둑들까지. 훔치기 위해 모였지만 목적은 서로 다른 10인의 도둑들은 서서히 자신만의 플랜을 세우기 시작하는데…", releaseDate: "2012.07.25 | 한국"),
        Movie.init(movieName: "명량", movieImage: UIImage(named: "명량"), description: "“명량해전, 과연 승리한 전쟁인가?” 이 도발적인 질문의 해답을 찾기 위해 김한민 감독과 <명량>의 주역들이 국내 최초 다큐 영화에 도전하다! 명량해전이 있기 직전 16일 간 이순신 장군의 실제 행적을 쫓아가며 우리가 몰랐던 이순신의 진짜 이야기를 낱낱이 파헤친다.", releaseDate: "2015.05.07 | 한국"),
        Movie.init(movieName: "아바타", movieImage: UIImage(named: "아바타"), description: "지구 에너지 고갈 문제를 해결하기 위해 판도라 행성으로 향한 인류는 원주민 ‘나비족’과 대립하게 된다. 이 과정에서, 전직 해병대원 제이크 설리(샘 워싱턴)가 ‘아바타’ 프로그램을 통해 ‘나비족’의 중심부에 투입되는데… 피할 수 없는 전쟁! 이 모든 운명을 손에 쥔 제이크! 그 누구도 넘보지 못한 역대급 세계가 열린다! 아바타: 인간과 ‘나비족’의 DNA를 결합해 만들어졌으며 링크룸을 통해 인간의 의식으로 원격 조종할 수 있는 새로운 생명체", releaseDate: "2009.12.17 | 미국"),
        Movie.init(movieName: "어벤져스 엔드게임", movieImage: UIImage(named: "어벤져스엔드게임"), description: "인피니티 워 이후 절반만 살아남은 지구 마지막 희망이 된 어벤져스 먼저 떠난 그들을 위해 모든 것을 걸었다! 위대한 어벤져스 운명을 바꿀 최후의 전쟁이 펼쳐진다!", releaseDate: "2019.04.24 | 미국"),
        Movie.init(movieName: "알라딘", movieImage: UIImage(named: "알라딘"), description: "머나먼 사막 속 신비의 아그라바 왕국의 시대. 좀도둑 ‘알라딘’은 마법사 ‘자파’의 의뢰로 마법 램프를 찾아 나섰다가 주인에게 세 가지 소원을 들어주는 지니를 만나게 되고, 자스민 공주의 마음을 얻으려다 생각도 못했던 모험에 휘말리게 되는데…", releaseDate: "2019.05.23 | 미국"),
        Movie.init(movieName: "태극기 휘날리며", movieImage: UIImage(named: "태극기휘날리며"), description: "가족의 생계를 책임지기 위해 열심히 살아가는 ‘진태’(장동건)는 약혼녀 ‘영신’(이은주)과의 결혼과, 세상에서 가장 소중하게 생각하는 동생 ‘진석’(원빈)의 대학진학을 위해 어려운 상황에서도 씩씩하게 생활을 해나간다. 1950년 6월의 어느 날, 한반도에 전쟁이 일어났다는 호회가 배포되고, 두 형제는 평온한 일상에서 갑작스레 전쟁터로 내몰린다. 훈련받을 시간조차 없이 국군 최후의 보루인 낙동강 방어선으로 실전 투입된 ‘진태’와 ‘진석’. 동생과 같은 소대에 배치된 ‘진태’는 아직 학생인 동생의 징집해제를 위해 대대장을 만나게 되고, 동생의 제대를 위해 자신이 해야 할 최선의 것이 무엇인지를 느끼게 된다. 그리고 동생의 생존을 위해 총을 들며 영웅이 되기를 자처하게 되고, 끝내 생각지도 못한 운명의 덫이 두 형제를 기다리고 있는데…", releaseDate: "2004.02.05 | 한국")
    
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupSearchController()
        tableView.rowHeight = 120
        
        
    }
    
    
    func setupSearchController() {
        let searchController = UISearchController(searchResultsController: nil)
        searchController.searchBar.placeholder = "검색"
        searchController.hidesNavigationBarDuringPresentation = false
        searchController.automaticallyShowsCancelButton = true
        
        self.navigationItem.searchController = searchController
        self.navigationItem.hidesSearchBarWhenScrolling = false
        
    }
  
    
}

extension SearchTableViewController {
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        if let movie = movieList[section].movieName {
            return movie.count
        } else {
            return 0
        }
        
        
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "SearchTableViewCell", for: indexPath) as! SearchTableViewCell
        
        cell.movieNameLabel.font = .boldSystemFont(ofSize: 15)
        cell.movieNameLabel.numberOfLines = 0
        cell.releaseDateLabel.font = .systemFont(ofSize: 12)
        cell.releaseDateLabel.numberOfLines = 0
        cell.descriptionLabel.font = .systemFont(ofSize: 13)
        cell.descriptionLabel.numberOfLines = 0
        
        
        let movie = movieList[indexPath.row]
        
        cell.movieNameLabel.text = movie.movieName
        cell.mainImageView.image = movie.movieImage
        cell.descriptionLabel.text = movie.description
        cell.releaseDateLabel.text = movie.releaseDate
        
        return cell
    }
    
    
    
    
    
}

