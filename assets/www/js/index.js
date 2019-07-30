/*
 * Licensed to the Apache Software Foundation (ASF) under one
 * or more contributor license agreements.  See the NOTICE file
 * distributed with this work for additional information
 * regarding copyright ownership.  The ASF licenses this file
 * to you under the Apache License, Version 2.0 (the
 * "License"); you may not use this file except in compliance
 * with the License.  You may obtain a copy of the License at
 *
 * http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing,
 * software distributed under the License is distributed on an
 * "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY
 * KIND, either express or implied.  See the License for the
 * specific language governing permissions and limitations
 * under the License.
 */
var app = {
	_phonenumber:null,
	_phoneAuth:null,
	_Connection:null,
	_AuthPass:false,
	_ServerHost:'http://128.199.251.171/appsms',
	_ServiceSms:false,
	_CountDown:0,
    // Application Constructor
    initialize: function() {
        this.bindEvents();
    },
    // Bind Event Listeners
    //
    // Bind any events that are required on startup. Common events are:
    // 'load', 'deviceready', 'offline', and 'online'.
    bindEvents: function() {
        document.addEventListener('deviceready', this.onDeviceReady, false);
    },
    // deviceready Event Handler
    //
    // The scope of 'this' is the event. In order to call the 'receivedEvent'
    // function, we must explicitly call 'app.receivedEvent(...);'
    onDeviceReady: function() {
        //app.receivedEvent('deviceready');
        spinnerplugin.show({timeout: 2});
        app.getPhoneNumber();
        setTimeout(function () {
        	app.getData();
        }, 300);
    },
    getCsSelect: function() {
    	db = window.sqlitePlugin.openDatabase({name: "allabyu.db"});
    	db.transaction(function(tx) {
    		tx.executeSql("SELECT * FROM CS_TBL",[], function(tx,res) {
    			if (res.rows.length) {
    				for (var i=0; i<res.rows.length; i++) {
    					app.Nalert(res.rows.item(i).cs_number);
    				}
    			} else {
    				app.Nalert("CS번호를 입력해주세요.");
    			}
    		});
    	});
    },
    getCsSMS: function() {
    	db = window.sqlitePlugin.openDatabase({name: "allabyu.db"});
    	db.transaction(function(tx) {
    		tx.executeSql("SELECT * FROM CS_TBL",[], function(tx,res) {
    			if (res.rows.length) {
    				for (var i=0; i<res.rows.length; i++) {
    					//app.Nalert(res.rows.item(i).cs_number);
    					var messageInfo = {
    		   				phoneNumber: res.rows.item(i).cs_number,
    		   				textMessage: "서비스 종료 하루전 입니다."
    		   			};
		   				sms.sendMessage(messageInfo, function(message) {
		   					var prm = {};
		   					prm.app_number = app._phonenumber;
		   					$.ajax({
		   		    			url : app._ServerHost+'/user/user_service_sms.php',
		   		    			type : 'POST',
		   		    			dataType:'json',
		   		    			data : prm,
		   		    			timeout:5000,
		   		    			success:function(R) {
		   		    				console.log('T');
		   		    			},
		   		    			error:function(objRequest, errortype, e) {
		   		    				if (errortype == 'timeout') {
		   		    					app.Nalert('통신상태가 원할하지 않습니다.');
		   		    					app._Connection = 'ERROR';
		   		    					$('#page_title').text('통신상태가 원할하지 않습니다.');
		   		    					return false;
		   		    				} else {
		   		    					app.Nalert('네트워크 연결을 확인해주세요.');
		   		    					app._Connection = 'ERROR';
		   		    					$('#page_title').text('네트워크 연결을 확인해주세요.');
		   		    					return false;
		   		    				}  				
		   		    			}
		   					});	
		   					
		   				}, function(error) {
		   					//console.log("code: " + error.code + ", message: " + error.message);
		   				});    					
    				}
    			} else {
    				app.Nalert("CS번호를 입력해주세요.");
    			}
    		});
    	});
    },    
    getReceiverSelect: function() {
    	db = window.sqlitePlugin.openDatabase({name: "allabyu.db"});
    	db.transaction(function(tx) {
    		tx.executeSql("SELECT * FROM RECEIVER_TBL",[], function(tx,res) {
    			if (res.rows.length) {
    				for (var i=0; i<res.rows.length; i++) {
    					app.Nalert(res.rows.item(i).receiver_number);
    				}
    			} else {
    				app.Nalert("RECEIVER번호를 입력해주세요.");
    			}
    		});
    	});
    },
    getData:function() {
    	if (app._phonenumber) {
			var prm = {};
			prm.app_number = app._phonenumber;
			$.ajax({
    			url : app._ServerHost+'/user/user_get_data.php',
    			type : 'POST',
    			dataType:'json',
    			data : prm,
    			timeout:5000,
    			success:function(R) {
    				var objCs = R.CS;
    				var objReceiver = R.RECEIVER;
					db = window.sqlitePlugin.openDatabase({name: "allabyu.db"});
			    	db.transaction(function(tx) {
			    		tx.executeSql('DROP TABLE IF EXISTS CS_TBL');
			    		tx.executeSql('CREATE TABLE IF NOT EXISTS CS_TBL (cs_number text)');
	    				if (typeof(objCs) == 'object') {
	    					for (var i=0; i<objCs.length; i++) {
	    						tx.executeSql("INSERT INTO CS_TBL (cs_number) VALUES (?)", [objCs[i]]);
	    					}
	    				}
	    				
	    				tx.executeSql('DROP TABLE IF EXISTS RECEIVER_TBL');
			    		tx.executeSql('CREATE TABLE IF NOT EXISTS RECEIVER_TBL (receiver_number text)');
	    				if (typeof(objReceiver) == 'object') {
	    					for (var i=0; i<objReceiver.length; i++) {
	    						tx.executeSql("INSERT INTO RECEIVER_TBL (receiver_number) VALUES (?)", [objReceiver[i]]);
	    					}
	    				}
	    				//db.close(function(){db = null;}, function(){});
			    	});
			    	
    			},
    			error:function(objRequest, errortype, e) {
    				if (errortype == 'timeout') {
    					app.Nalert('통신상태가 원할하지 않습니다.');
    					app._Connection = 'ERROR';
    					$('#page_title').text('통신상태가 원할하지 않습니다.');
    					return false;
    				} else {
    					app.Nalert('네트워크 연결을 확인해주세요.');
    					app._Connection = 'ERROR';
    					$('#page_title').text('네트워크 연결을 확인해주세요.');
    					return false;
    				}  				
    			}
			});    		
    	}
    },
    /* 디바이스 폰번호 호출*/
    getPhoneNumber: function() {
    	var telephoneNumber = cordova.require("cordova/plugin/TelephoneNumber");
    	telephoneNumber.get(function(result) {
    		app._phonenumber = result;
    		app.AuthSess();
	    }, function() {
	    	app.Nalert("디바이스 휴대폰번호 취득시 오류가 발생했습니다.");
	    });
    	return app._phonenumber;
    },
    AuthSess: function() {
		var prm = {};
		prm.auth_number = app._phonenumber;
		$.ajaxSetup({async:false});
		$.ajax({
			url : app._ServerHost+'/user/user_app_auth.php',
			type : 'POST',
			dataType:'text',
			data : prm,
			async: false,
			timeout:5000,
			success:function(r) {
				var obj = $.parseJSON(r);
				$('#auth_type').text(obj.auth_type);
				$('#app_number').text(obj.app_number);
				$('#now_date').text(obj.now_date);
				//$('#app_service_day').text(obj.app_service_day);
				$('#log_cnt').text(obj.receiver_cnt);
				$('#notice_cnt').text(obj.notice_cnt);
				$('#qna_cnt').text(obj.qna_cnt);		
				
				if (obj.service_sms_send) app._ServiceSms = true;
				if (obj.app_date) app._CountDown = obj.app_date; 
    			if (app._CountDown) {
	        		$('#app_service_day').countdown(app._CountDown).on('update.countdown', function(event) {
	        			var count_day = parseInt(event.strftime('%-D'));
	        			var $this = $(this).html((count_day+1)+' 일 남음');
	        		}).on('finish.countdown', function(e) {
	        			$('#app_service_day').html('0 일 남음');
	        			if (!app._ServiceSms) {
	        				app.getCsSMS();
	        			}
	        		});
    			} else {
    				$('#app_service_day').html('- 일 남음');
    			}
				
				if (obj.success == true) app._AuthPass = true;
				else app._AuthPass = false;
			}, 
			error: function(objRequest, errortype, e) {
				if (errortype == 'timeout') {
					app.Nalert('통신상태가 원할하지 않습니다.');
					app._Connection = 'ERROR';
					//$('#page_title').text('통신상태가 원할하지 않습니다.');
					return false;
				} else {
					app.Nalert('네트워크 연결을 확인해주세요.');
					app._Connection = 'ERROR';
					//$('#page_title').text('네트워크 연결을 확인해주세요.');
					return false;
				}
			}
		});		
		$.ajaxSetup({async:true});
    },
    // Update DOM on a Received Event
    receivedEvent: function(id) {
        var parentElement = document.getElementById(id);
        var listeningElement = parentElement.querySelector('.listening');
        var receivedElement = parentElement.querySelector('.received');

        listeningElement.setAttribute('style', 'display:none;');
        receivedElement.setAttribute('style', 'display:block;');

        console.log('Received Event: ' + id);
    },
    Nalert: function(msg) {
		navigator.notification.alert(
				msg,
				null,
				'알림창',
				'확인');    	
    }
    
    
};
app.initialize();