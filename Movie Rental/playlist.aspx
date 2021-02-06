﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Film.Master" AutoEventWireup="true" CodeBehind="playlist.aspx.cs" Inherits="Movie_Rental.playlist" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Playlist</title>
	<style>
    	body{
    		background-color: #f7f7f7;
    		font-family: Open sans;
    	}
		.pic{
			width: 100%;
    		min-height: 250px;
		}
    	.main{
    		padding: 40px 0;
    	}
    	.col-md-3{
    		margin-bottom: 40px;
    	}
    	.album-poster{
    		position: relative;
    		display: block;
    		border-radius: 7px;
    		overflow: hidden;
    		box-shadow: 0 15px 35px #3d2173a1;
    		transition: all ease 0.4s;
    	}
    	.album-poster:hover{
    		box-shadow: none;
    		transform: scale(0.98) translateY(5px);
    	}
    	h3{
    		font-size: 34px;
    		margin-bottom: 34px;
    		border-bottom: 4px solid #e6e6e6;
    		padding-bottom: 15px;
    	}
    	p{
    		font-size: 15px;
    	}
    	h4{
    		font-size: 16px;
    		text-transform: uppercase;
    		margin-top: 15px;
    		font-weight: 700;
    	}
		

		/*default is hide music player*/
		#aplayer{
			position: fixed;
			bottom: -100%;
			left: 0;
			width: 100%;
			margin: 0;
			box-shadow: 0 -2px 2px #dadada;
			background-color: #fff;
			transition: all ease 0.5s;
		}
		#aplayer.showPlayer{
			bottom: 0;
		}

		
		/*MUSIC PLAYER CUSTOMIZING STYLE*/
		span{
			color: #000 !important;
			font-size: 16px;
		}
		.aplayer .aplayer-info .aplayer-controller .aplayer-bar-wrap .aplayer-bar .aplayer-loaded{
			background: #e0e0e0;
    		height: 4px;
		}
		.aplayer .aplayer-info .aplayer-controller .aplayer-bar-wrap .aplayer-bar .aplayer-played{
			height: 4px;
			background-color: #2196F3 !important;
		}
		.aplayer .aplayer-info .aplayer-controller .aplayer-bar-wrap .aplayer-bar .aplayer-played .aplayer-thumb{
			background-color: #2196F3 !important;
		}

		.aplayer .aplayer-icon{
			width: 20px;
			height: 20px;
		}
		.aplayer .aplayer-info .aplayer-controller .aplayer-time .aplayer-icon path {
		    fill: #000;
		}
		.aplayer .aplayer-info .aplayer-music{
			margin-bottom: 5px;
		}


    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section>
<div class="main">
	<div class="container">
		<div class="row">
			<div class="col-md-12">
				<h3>Top This Week</h3>
			</div>
			<div class="col-md-3">
				<a href="javascript:void();" class="album-poster" data-switch="0">
					<%--<img src="https://images.pexels.com/photos/1763075/pexels-photo-1763075.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500" alt="" class="pic">--%>
					<img src="albums/after_hours.png" alt="" class="pic">
				</a>
				<h4>Heartless</h4>
				<p>The Weeknd - 2020</p>
			</div>
			<div class="col-md-3">
				<a href="#" class="album-poster" data-switch="1">
					<%--<img src="https://images.pexels.com/photos/1370545/pexels-photo-1370545.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500" alt="" class="pic">--%>
					<img src="albums/views.jpg" alt="" class="pic">
				</a>
				<h4>Hotline Bling</h4>
				<p>Drake - 2016</p>
			</div>
			<div class="col-md-3">
				<a href="#" class="album-poster" data-switch="2">
					<%--<img src="https://images.pexels.com/photos/838696/pexels-photo-838696.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500" alt="" class="pic">--%>
					<img src="albums/astroworld.jpg" alt="" class="pic">
				</a>
				<h4>Sicko Mode</h4>
				<p>Travis Scott - 2018</p>
			</div>

			<div class="col-md-3">
				<a href="#" class="album-poster" data-switch="3">
					<%--<img src="https://images.pexels.com/photos/1047442/pexels-photo-1047442.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500" alt="" class="pic">--%>
					<img src="albums/detroit2.jpg" alt="" class="pic">
				</a>
				<h4>Wolves</h4>
				<p>Big Sean - 2020</p>
			</div>
			<div class="col-md-3">
				<a href="#" class="album-poster" data-switch="4">
					<img src="https://images.pexels.com/photos/1190298/pexels-photo-1190298.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500" alt="" class="pic">
				</a>
				<h4>praesentium fugiat</h4>
				<p>Lorem ipsum dolor - 2020</p>
			</div>
			<div class="col-md-3">
				<a href="#" class="album-poster" data-switch="5">
					<img src="https://images.pexels.com/photos/210922/pexels-photo-210922.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500" alt="" class="pic">
				</a>
				<h4>veniam expedita</h4>
				<p>Porro distinctio fuga - 2020</p>
			</div>
			<div class="col-md-3">
				<a href="#" class="album-poster" data-switch="6">
					<img src="https://images.pexels.com/photos/1763075/pexels-photo-1763075.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500" alt="" class="pic">
				</a>
				<h4>Lorem ipsum</h4>
				<p>Lorem ipsum - 2010</p>
			</div>
			<div class="col-md-3">
				<a href="#" class="album-poster">
					<img src="https://images.pexels.com/photos/1370545/pexels-photo-1370545.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500" alt="" class="pic">
				</a>
				<h4>Repellat illo</h4>
				<p>Lorem ipsum dolor sit ame - 2020</p>
			</div>
			
		</div>


		<div class="row">
			<div class="col-md-12">
				<h3>coming soon</h3>
			</div>
			<div class="col-md-2">
				<a href="#" class="album-poster">
					<img src="https://images.pexels.com/photos/1699161/pexels-photo-1699161.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500" alt="" class="pic">
				</a>
				<h4>Lorem ipsum</h4>
			</div>
			<div class="col-md-2">
				<a href="#" class="album-poster">
					<img src="https://images.pexels.com/photos/838702/pexels-photo-838702.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500" alt="" class="pic">
				</a>
				<h4>Repellat illo</h4>
			</div>
			<div class="col-md-2">
				<a href="#" class="album-poster">
					<img src="https://images.pexels.com/photos/894156/pexels-photo-894156.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500" alt="" class="pic">
				</a>
				<h4>adipisicing elit</h4>
			</div>
			
			<div class="col-md-2">
				<a href="#" class="album-poster">
					<img src="https://images.pexels.com/photos/2118046/pexels-photo-2118046.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500" alt="" class="pic">
				</a>
				<h4>Atque ab</h4>
			</div>
			<div class="col-md-2">
				<a href="#" class="album-poster">
					<img src="https://images.pexels.com/photos/1735240/pexels-photo-1735240.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500" alt="" class="pic">
				</a>
				<h4>Fugiat Silly</h4>
			</div>
			<div class="col-md-2">
				<a href="#" class="album-poster">
					<img src="https://images.pexels.com/photos/2272854/pexels-photo-2272854.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500" alt="" class="pic">
				</a>
				<h4>veniam expedita</h4>
			</div>
		</div>


	</div>
</div>

	<div id="aplayer"></div>

	<!-- Jquery Link -->
	<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js"></script>
	<!-- Bootstrap Link -->
	<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
	<!-- APlayer Jquery link -->
	<script src="https://cdnjs.cloudflare.com/ajax/libs/aplayer/1.10.1/APlayer.min.js"></script>	

	<script>


		// NOW I CLICK album-poster TO GET CURRENT SONG ID
		$(".album-poster").on('click', function(e){
			var dataSwitchId = $(this).attr('data-switch');
			//console.log(dataSwitchId);

			// and now i use aplayer switch function see
			ap.list.switch(dataSwitchId); //this is static id but i use dynamic 

			// aplayer play function
			// when i click any song to play
			ap.play();

			// click to slideUp player see
			$("#aplayer").addClass('showPlayer');
		});

		const ap = new APlayer({
		    container: document.getElementById('aplayer'),
		    listFolded: true,
		    audio: [
		    {
		        name: 'Heartless',
		        artist: 'The Weeknd',
					url: 'tracks/heartless.mp3',
					cover: 'albums/after_hours.png'
		    },
			{
		        name: 'Hotline Bling',  // SONG NAME
		        artist: 'Drake', //ARTIST NAME
		        url: 'tracks/hotline_bling.mp3', // PATH NAME AND SONG URL
				cover: 'albums/views.jpg'
		    },
			{
				name: 'Sicko Mode',
				artist: 'Travis Scott',
				url: 'tracks/sicko_mode.mp3',
				cover: 'albums/astroworld.jpg'
			},
			{
				name: 'Wolves',
				artist: 'Big Sean',
				url: 'tracks/wolves.mp3',
				cover: 'albums/detroit2.jpg'
			},


		    ]
		});
    </script>
	</section>
</asp:Content>
