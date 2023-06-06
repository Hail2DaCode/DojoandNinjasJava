package com.brian.dojos.services;

import java.util.List;

import org.springframework.stereotype.Service;

import com.brian.dojos.models.Ninja;
import com.brian.dojos.repositories.NinjaRepository;


@Service
public class NinjaService {
	private final NinjaRepository ninjaRepository;
	
	public NinjaService (NinjaRepository ninjaRepository) {
		this.ninjaRepository = ninjaRepository;
	}
	public List<Ninja> allNinjas() {
		return ninjaRepository.findAll();
	}
	public Ninja createNinja(Ninja n) {
		return ninjaRepository.save(n);
	}
}
